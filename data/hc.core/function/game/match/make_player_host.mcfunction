#>hc.core:game/match/make_player_host
#
# Makes the executing player the host of the game.
#
# @context player

# remove any host
scoreboard players reset @a[tag=hc.MatchHost] cancel
tag @a[tag=hc.MatchHost] remove hc.MatchHost

# make executing entity the new host
tag @s add hc.MatchHost
scoreboard players enable @s cancel

# announce new host
function hc:msg/all/send { \
    text:{ \
        translate:"hc.msg.all.player_will_be_host", \
        fallback:"%s will be the host of the match being requested", \
        color:"yellow", \
        with:[{selector:"@s"}], \
    }, \
}
