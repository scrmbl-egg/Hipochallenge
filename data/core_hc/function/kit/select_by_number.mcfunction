#>core_hc:kit/select_by_number
#
# Selects the Nth kit of whatever class the player has selected.
#
# @input
#   value: int
#       Number of the kit that will be selected.

# return early if value doesn't correspond to kit
$execute unless predicate { \
    condition:"minecraft:value_check", \
    range:{ \
        min:1, \
        max:3, \
    }, \
    value:$(value), \
} \
    run \
    return run \
    function std:empty

$scoreboard players set @s hc.Kit $(value)

# return early if class isn't selected
execute unless predicate hc:class/has_selected \
    run \
    return run \
    function std:empty

# setup data (one of these two text components will be selected)
data modify storage hc:temp select_kit set value { \
    team_msg_args:{ \
        team:"", \
        text:{ \
            translate:"hc.msg.team.player_selected_kit", \
            fallback:"%1$s has selected the %2$s kit", \
            with:[ \
                {selector:"@s"}, \
                {storage:"hc:temp",nbt:"select_kit.kit_text",interpret:true}, \
            ], \
        }, \
    }, \
    priv_msg_args:{ \
        text:{ \
            translate:"hc.msg.private.player_selected_kit", \
            fallback:"You selected the %1$s kit", \
            with:[ \
                {storage:"hc:temp",nbt:"select_kit.kit_text",interpret:true}, \
            ], \
        }, \
    }, \
    kit_text:{}, \
    kit_text_style:{}, \
}

# get team the message may be sent to
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.team_msg_args.team", \
}

# get kit name
function hc:kit/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.kit_text", \
}

# get list info style for the kit name and merge
function hc:class/get_data_field { \
    field:"list_info.kit_text_style", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.kit_text_style", \
}
data modify storage hc:temp select_kit.kit_text \
    merge from storage hc:temp select_kit.kit_text_style

# send msg
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/team/send \
    with storage hc:temp select_kit.team_msg_args
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/private/send \
    with storage hc:temp select_kit.priv_msg_args

# free memory
data remove storage hc:temp select_kit
