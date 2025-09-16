#>hipochallenge:team/join_team2
#
# Makes the player join the team2 team and prints a message in chat.

# make player leave
team leave @s

# setup message
data modify storage hc:temp msg_params.text set value { \
    translate:"hc.msg.all.player_has_joined_team", \
    fallback:"%1$s has joined the %2$s team", \
    with:[ \
        {selector:"@s"}, \
        {}, \
    ], \
}

# put custom name or default team name
execute if \
    data storage minecraft:hipochallenge vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp msg_params.text.with[1] \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.custom_name
execute unless \
    data storage minecraft:hipochallenge vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp msg_params.text.with[1] \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.default_name

# put color in name text component
data modify storage hc:temp msg_params.text.with[1].color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.name_color

# print message
function hipochallenge:msg/all/send with storage hc:temp msg_params

# join team
team join hc.Team2 @s

# play sound
execute as @a at @s \
    run \
    playsound minecraft:entity.experience_orb.pickup \
    master @s ~ ~ ~ 0.25 1

# free memory
data remove storage hc:temp msg_params
