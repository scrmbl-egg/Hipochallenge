#>core_hc:class/select_by_number
#
# Selects the Nth class of whatever class the player has selected.
#
# @input
#   value: int
#       Number of the class that will be selected.

# return early if value doesn't correspond to class
$execute unless predicate { \
    condition:"minecraft:value_check", \
    range:{ \
        min:1, \
        max:{ \
            type:"minecraft:storage", \
            storage:"hc:main", \
            path:"consts.class_count", \
        }, \
    }, \
    value:$(value), \
} \
    run \
    return run \
    function std:empty

$scoreboard players set @s hc.Class $(value)

# return early if class isn't selected
execute unless predicate hc:class/has_selected \
    run \
    return run \
    function std:empty

# setup data (one of these two text components will be selected)
data modify storage hc:temp select_class set value { \
    match_msg_args:{ \
        team:"", \
        text:{ \
            translate:"hc.msg.match.player_selected_class", \
            fallback:"%1$s has selected the %2$s class", \
            with:[ \
                {selector:"@s"}, \
                { \
                    storage:"hc:temp", \
                    nbt:"select_class.class_text", \
                    interpret:true, \
                }, \
            ], \
        }, \
    }, \
    priv_msg_args:{ \
        text:{ \
            translate:"hc.msg.private.player_selected_class", \
            fallback:"You selected the %1$s class", \
            with:[ \
                { \
                    storage:"hc:temp", \
                    nbt:"select_class.class_text", \
                    interpret:true, \
                }, \
            ], \
        }, \
    }, \
    class_text:{}, \
    class_text_style:{}, \
}

# get team the message may be sent to
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_class.match_msg_args.team", \
}

# get class name
$data modify storage hc:temp select_class.class_text \
    set from storage hc:main consts.classes[{id:$(value)}].name

# get list info style for the class name
$data modify storage hc:temp select_class.class_text \
    merge from storage \
    hc:main consts.classes[{id:$(value)}].list_info.class_text_style

# send msg
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/match/send \
    with storage hc:temp select_class.match_msg_args
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/private/send \
    with storage hc:temp select_class.priv_msg_args

# free memory
data remove storage hc:temp select_class
