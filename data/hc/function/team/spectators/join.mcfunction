#>hc:team/spectators/join
#
# Makes the player join the spectators team and prints a message in chat.
#
# @context player

team leave @s

# send message
function hc:msg/match/send { \
    text:{ \
        translate:"hc.msg.match.player_has_joined_team", \
        fallback:"%1$s has joined %2$s", \
        with:[ \
            {selector:"@s"}, \
            { \
                translate:"hc.teams.spectators.name", \
                fallback:"Spectators", \
                color:"gray", \
            }, \
        ], \
    }, \
}

team join hc.Spectators @s

# reset all options, just in case
function hc:class/reset
function hc:kit/reset
function hc:perk/reset

# play sound
execute as @s \
    at @s \
    run \
    playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 0.25 1 0.25
