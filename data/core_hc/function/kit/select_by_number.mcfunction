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
            with:[{selector:"@s"}, {}], \
        }, \
    }, \
    priv_msg_args:{ \
        text:{ \
            translate:"hc.msg.private.player_selected_kit", \
            fallback:"You selected the %1$s kit", \
            with:[{}], \
        }, \
    }, \
}

# get team the message may be sent to
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.team_msg_args.team", \
}

# get kit name in both possible text components
function hc:kit/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.priv_msg_args.text.with[0]", \
}
function hc:kit/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.team_msg_args.text.with[1]", \
}

# get list info color for the kit name
function hc:class/get_data_field { \
    field:"list_info.kit_color", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.priv_msg_args.text.with[0].color", \
}
function hc:class/get_data_field { \
    field:"list_info.kit_color", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.team_msg_args.text.with[1].color", \
}

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
