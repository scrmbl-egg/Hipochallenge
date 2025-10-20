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

# setup message params depending if its in match team or not
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    data modify storage hc:temp select_kit.msg_params.text set value { \
        translate:"hc.msg.team.player_selected_kit", \
        fallback:"%1$s has selected the %2$s kit", \
        with:[{selector:"@s"}, {}], \
    }
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    data modify storage hc:temp select_kit.msg_params.text set value { \
        translate:"hc.msg.private.player_selected_kit", \
        fallback:"You selected the %1$s kit", \
        with:["IF YOU SEE THIS, THIS IS A BUG!", {}], \
    }
# that funny text object will make sense later

# get team the message may be sent to
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function core_hc:team/get_self_team { \
        out_storage:"hc:temp", \
        out_nbt:"select_kit.msg_params.team", \
    }

# get kit name
$data modify storage hc:temp select_kit.get_data_params set value { \
    class_id:0, \
    kit_id:$(value), \
    member_name:"name", \
    out_storage:"hc:temp", \
    out_nbt:"select_kit.msg_params.text.with[1]", \
}
execute store result storage hc:temp select_kit.get_data_params.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class

function core_hc:kit/get_data_member \
    with storage hc:temp select_kit.get_data_params

# get kit name color by changing get_data_params
data modify storage hc:temp select_kit.get_data_params.member_name \
    set value "list_info.kit_color"
data modify storage hc:temp select_kit.get_data_params.out_nbt \
    set value "select_kit.msg_params.text.with[1].color"

function core_hc:class/get_data_member \
    with storage hc:temp select_kit.get_data_params

## NOTE:
# the following op is super hacky and kinda unsafe, but i'm really not in the
# mood to change this to make it more modular
# - dani

# remove first "with" text object in message text if not in match pvp
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    data remove storage hc:temp select_kit.msg_params.text.with[0]

# send msg
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/team/send with storage hc:temp select_kit.msg_params
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/private/send with storage hc:temp select_kit.msg_params

# free memory
data remove storage hc:temp select_kit
