#>core_hc:list_info/update
#
# Updates the player list information of the player and displays it, with their
# selected class name, kit name, perk name, and match stats (kills, deaths,
# points).
#
# @context player

## NOTE:
# neutral/training players are not updated because, if they were, their class
# name and stats would add visual noise the legitimate player would need to
# filter out from the ones whose information they would need to care about.

# clear info if player doesn't meet the following conditions
execute unless predicate { \
    condition:"minecraft:all_of", \
    terms:[ \
        { \
            condition:"minecraft:reference", \
            name:"hc:team/is_in_match_pvp_team", \
        }, \
        { \
            condition:"minecraft:reference", \
            name:"hc:util/has_all_options_selected", \
        }, \
    ], \
} \
    run \
    return run \
    function core_hc:list_info/clear

# setup temp data
data modify storage hc:temp update_list_info set value { \
    detected_text:{ \
        translate:"hc.class.list_info", \
        fallback:"%1$s :: %2$s :: %3$s - %4$s %7$s :: %5$s %8$s :: %6$s %9$s", \
        color:"gray", \
        with:[ \
            { \
                storage:"hc:temp", \
                nbt:"update_list_info.class_text", \
                interpret:true, \
            }, \
            { \
                storage:"hc:temp", \
                nbt:"update_list_info.kit_text", \
                interpret:true, \
            }, \
            { \
                storage:"hc:temp", \
                nbt:"update_list_info.perk_text", \
                interpret:true, \
            }, \
            {score:{name:"@s",objective:"hc.PlayerKillCount"},color:"yellow"}, \
            {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
            {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
            { \
                translate:"hc.score.player_kill_count_representation", \
                fallback:"\u2694", \
                color:"green", \
            }, \
            { \
                translate:"hc.score.death_count_representation", \
                fallback:"\u2620", \
                color:"red", \
            }, \
            { \
                translate:"hc.score.points_representation", \
                fallback:"\u2666", \
                color:"gold", \
            }, \
        ], \
    }, \
    undetected_text:{ \
        translate:"hc.class.list_info", \
        fallback:"%1$s :: %2$s :: %3$s - %4$s %7$s :: %5$s %8$s :: %6$s %9$s", \
        color:"gray", \
        with:[ \
            { \
                storage:"hc:temp", \
                nbt:"update_list_info.class_text", \
                interpret:true, \
            }, \
            "?", \
            "?", \
            {score:{name:"@s",objective:"hc.PlayerKillCount"},color:"yellow"}, \
            {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
            {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
            { \
                translate:"hc.score.player_kill_count_representation", \
                fallback:"\u2694", \
                color:"green", \
            }, \
            { \
                translate:"hc.score.death_count_representation", \
                fallback:"\u2620", \
                color:"red", \
            }, \
            { \
                translate:"hc.score.points_representation", \
                fallback:"\u2666", \
                color:"gold", \
            }, \
        ], \
    }, \
    class_text:{ \
        translate:"hc.class.name_with_icon", \
        fallback:"%2$s %1$s", \
        with:[{},{}], \
    }, \
    kit_text:{}, \
    perk_text:{}, \
    styles:{}, \
}
# get class name with icon
function hc:class/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.class_text.with[0]", \
}
function hc:class/get_data_field { \
    field:"icon", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.class_text.with[1]", \
}
# get kit name
function hc:kit/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.kit_text", \
}
# get perk name
function hc:perk/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.perk_text", \
}

## get text styles and merge with class, kit and perk names
function hc:class/get_data_field { \
    field:"list_info", \
    out_storage:"hc:temp", \
    out_nbt:"update_list_info.styles", \
}
data modify storage hc:temp update_list_info.class_text \
    merge from storage hc:temp update_list_info.styles.class_text_style
data modify storage hc:temp update_list_info.kit_text \
    merge from storage hc:temp update_list_info.styles.kit_text_style
data modify storage hc:temp update_list_info.perk_text \
    merge from storage hc:temp update_list_info.styles.perk_text_style

## display composed text
execute if predicate hc:mechanic/is_detected \
    run \
    scoreboard players display numberformat @s hc.ListInfo fixed { \
        storage:"hc:temp", \
        nbt:"update_list_info.detected_text", \
        interpret:true, \
    }
execute unless predicate hc:mechanic/is_detected \
    run \
    scoreboard players display numberformat @s hc.ListInfo fixed { \
        storage:"hc:temp", \
        nbt:"update_list_info.undetected_text", \
        interpret:true, \
    }

# free memory
data remove storage hc:temp update_list_info
