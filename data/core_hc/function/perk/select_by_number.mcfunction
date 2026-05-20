#>core_hc:perk/select_by_number
#
# Selects the Nth perk of whatever class the player has selected.
#
# @input
#   value: int
#       Number of the perk that will be selected.

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

$scoreboard players set @s hc.Perk $(value)

# return early if class isn't selected
execute unless predicate hc:class/has_selected \
    run \
    return run \
    function std:empty

# setup data (one of these two text components will be selected)
data modify storage hc:temp select_perk set value { \
    team_msg_args:{ \
        team:"", \
        text:{ \
            translate:"hc.msg.team.player_selected_perk", \
            fallback:"%1$s has selected the %2$s perk", \
            with:[ \
                {selector:"@s"}, \
                { \
                    storage:"hc:temp", \
                    nbt:"select_perk.perk_text", \
                    interpret:true, \
                }, \
            ], \
        }, \
    }, \
    priv_msg_args:{ \
        text:{ \
            translate:"hc.msg.private.player_selected_perk", \
            fallback:"You selected the %1$s perk", \
            with:[ \
                { \
                    storage:"hc:temp", \
                    nbt:"select_perk.perk_text", \
                    interpret:true, \
                }, \
            ], \
        }, \
    }, \
    perk_text:{}, \
    perk_text_style:{}, \
}

# get team the message may be sent to
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_perk.team_msg_args.team", \
}

# get perk name
function hc:perk/get_data_field { \
    field:"name", \
    out_storage:"hc:temp", \
    out_nbt:"select_perk.perk_text", \
}

# get list info style for the perk name and merge
function hc:class/get_data_field { \
    field:"list_info.perk_text_style", \
    out_storage:"hc:temp", \
    out_nbt:"select_perk.perk_text_style", \
}
data modify storage hc:temp select_perk.perk_text \
    merge from storage hc:temp select_perk.perk_text_style

# send msg
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/team/send \
    with storage hc:temp select_perk.team_msg_args
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/private/send \
    with storage hc:temp select_perk.priv_msg_args

# free memory
data remove storage hc:temp select_perk
