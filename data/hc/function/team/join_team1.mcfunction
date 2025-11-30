#>hc:team/join_team1
#
# Makes the player join the team1 team and prints a message in chat.

# make player leave
function hc:team/leave

# setup func parameters
data modify storage hc:temp join_team1 set value { \
    msg_params:{ \
        text:{ \
            translate:"hc.msg.all.player_has_joined_team", \
            fallback:"%1$s has joined the %2$s team", \
            with:[ \
                {selector:"@s"}, \
                {}, \
            ], \
        }, \
    }, \
    player_profile:{}, \
}

# put custom name or default team name
execute if \
    data storage hc:main vars.team_contexts.team1.custom_name \
    run \
    data modify storage hc:temp join_team1.msg_params.text.with[1] \
    set from storage \
    hc:main vars.team_contexts.team1.custom_name
execute unless \
    data storage hc:main vars.team_contexts.team1.custom_name \
    run \
    data modify storage hc:temp join_team1.msg_params.text.with[1] \
    set from storage \
    hc:main vars.team_contexts.team1.preset.default_name

# put color in name text component
data modify storage hc:temp join_team1.msg_params.text.with[1].color \
    set from storage \
    hc:main vars.team_contexts.team1.preset.name_color

# print message
function hc:msg/all/send with storage hc:temp join_team1.msg_params

# join team
team join hc.Team1 @s

# get player profile in temp storage and append it in global vars
function hc:util/profile/get_full { \
    out_storage:"hc:temp", \
    out_nbt:"join_team1.player_profile", \
}
data modify storage hc:main vars.team_contexts.team1.player_profiles \
    append from storage hc:temp join_team1.player_profile

# play sound
execute as @a at @s \
    run \
    playsound minecraft:entity.experience_orb.pickup \
    master @s ~ ~ ~ 0.25 1

# free memory
data remove storage hc:temp join_team1
