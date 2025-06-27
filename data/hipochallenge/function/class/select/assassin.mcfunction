scoreboard players set @s class 3

data modify storage minecraft:hipochallenge local_msg_params.text.translate \
    set value "hc.msg.all.player_selected_class"
data modify storage minecraft:hipochallenge local_msg_params.text.fallback \
    set value "%1$s has selected the %2$s class"
data modify storage minecraft:hipochallenge local_msg_params.text.with \
    append value {selector:"@s"}
data modify storage minecraft:hipochallenge local_msg_params.text.with \
    append from storage minecraft:hipochallenge consts.classes.assassin.name

function hipochallenge:msg/debug/send_info \
    with storage minecraft:hipochallenge local_msg_params

# free memory
data remove storage minecraft:hipochallenge local_msg_params
