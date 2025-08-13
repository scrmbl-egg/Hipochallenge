#>hipochallenge:team/join_spectators
#
# Makes the player join the spectators team and prints a message in chat.

team leave @s

# send message
function hipochallenge:msg/all/send { \
    translate:"hc.msg.all.player_has_joined_team", \
    fallback:"%1$s has joined %2$s", \
    with:[ \
        {selector:"@s"}, \
        {translate:"hc.teams.spectators.name",fallback:"Spectators"}, \
    ], \
}

team join spectators @s

function hipochallenge:class/reset
function hipochallenge:kit/reset
function hipochallenge:perk/reset

execute as @a at @s run \
    playsound minecraft:entity.experience_orb.pickup \
    master @s ~ ~ ~ 0.25 1
