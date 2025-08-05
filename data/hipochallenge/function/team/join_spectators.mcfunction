#>hipochallenge:team/join_spectators
#
# Makes the player join the spectators team and prints a message in chat.

team leave @s

data modify storage minecraft:hipochallenge local_msg_params.text.translate \
    set value "hc.msg.all.player_has_joined_team"
data modify storage minecraft:hipochallenge local_msg_params.text.fallback \
    set value "%1$s has joined %2$s"
data modify storage minecraft:hipochallenge local_msg_params.text.with \
    append value { \
        selector:"@s" \
    }
data modify storage minecraft:hipochallenge local_msg_params.text.with \
    append value { \
        translate:"hc.teams.spectators.name", \
        fallback:"Spectators", \
    }


function hipochallenge:msg/all/send \
    with storage minecraft:hipochallenge local_msg_params

team join spectators @s

function hipochallenge:class/reset_class
function hipochallenge:kit/reset_kit
function hipochallenge:perk/reset_perk

execute as @a at @s run \
    playsound minecraft:entity.experience_orb.pickup \
    master @s ~ ~ ~ 0.25 1

# free memory
data remove storage minecraft:hipochallenge local_msg_params
