#>core_hc:class/select_by_number
#
# Selects the Nth registered class.
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

# setup message params depending if its in match team or not
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    data modify storage hc:temp select_class.msg_params.text set value { \
        translate:"hc.msg.all.player_selected_class", \
        fallback:"%1$s has selected the %2$s class", \
        with:[{selector:"@s"}, {}], \
    }
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    data modify storage hc:temp select_class.msg_params.text set value { \
        translate:"hc.msg.private.player_selected_class", \
        fallback:"You selected the %1$s class", \
        with:["IF YOU SEE THIS, THIS IS A BUG!", {}], \
    }
# that funny text object will make sense later

# get team the message may be sent to
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:team/get_self_team { \
        out_storage:"hc:temp", \
        out_nbt:"select_class.msg_params.team", \
    }

# get class name
$data modify storage hc:temp select_class.msg_params.text.with[1] \
    set from storage hc:main consts.classes[{id:$(value)}].name

# get class name color
$data modify storage hc:temp select_class.msg_params.text.with[1].color \
    set from storage hc:main consts.classes[{id:$(value)}].list_info.class_color

## NOTE:
# the following op is super hacky and kinda unsafe, but i'm really not in the
# mood to change this to make it more modular
# - dani

# remove first "with" text object in message text if not in match pvp
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    data remove storage hc:temp select_class.msg_params.text.with[0]

# send msg
execute if predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/team/send with storage hc:temp select_class.msg_params
execute unless predicate hc:team/is_in_match_pvp_team \
    run \
    function hc:msg/private/send with storage hc:temp select_class.msg_params

# free memory
data remove storage hc:temp select_class
