#>hipochallenge:class/select/assassin
#
# Selects the assassin class.
#
# @context player

# change class score
execute store result score @s class \
    run \
    data get storage \
    minecraft:hipochallenge consts.classes[{internal_name:"assassin"}].id

# construct debug message parameters
data modify storage hc:temp msg_params.text set value { \
    translate:"hc.msg.all.player_selected_class", \
    fallback:"%1$s has selected the %2$s class", \
    with:[{selector:"@s"}, {}], \
}
data modify storage hc:temp msg_params.text.with[1] \
    set from storage \
    minecraft:hipochallenge consts.classes[{internal_name:"assassin"}].name

# send debug msg
function hipochallenge:msg/debug/send_info with storage hc:temp msg_params

# free memory
data remove storage hc:temp msg_params
