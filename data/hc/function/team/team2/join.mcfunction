#>hc:team/team2/join
#
# Makes the player join the team2 team and prints a message in chat.
#
# @context player

# make player leave
function hc:team/leave

# setup func parameters
data modify storage hc:temp join_team2 set value { \
    private_msg_args:{ \
        text:{ \
            translate:"hc.msg.private.joined_team", \
            fallback:"You joined the %s team", \
            with:[{}], \
        }, \
    }, \
    match_msg_args:{ \
        text:{ \
            translate:"hc.msg.match.player_has_joined_team", \
            fallback:"%1$s has joined the %2$s team", \
            with:[{selector:"@s"},{}], \
        }, \
    }, \
    player_profile:{}, \
}

# put custom name or default team name and color it in both empty text
# components
function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"join_team2.match_msg_args.text.with[1]", \
}
data modify storage hc:temp join_team2.match_msg_args.text.with[1].color \
    set from storage hc:main vars.team_contexts.team2.preset.text_color

function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"join_team2.private_msg_args.text.with[0]", \
}
data modify storage hc:temp join_team2.private_msg_args.text.with[0].color \
    set from storage hc:main vars.team_contexts.team2.preset.text_color

# print match message (player won't see this one!!)
function hc:msg/match/send with storage hc:temp join_team2.match_msg_args

# print private message
function hc:msg/private/send with storage hc:temp join_team2.private_msg_args

# join team
team join hc.Team2 @s

# get player profile in temp storage and append it in global vars
function hc:util/profile/get_full { \
    out_storage:"hc:temp", \
    out_nbt:"join_team2.player_profile", \
}
data modify storage hc:main vars.team_contexts.team2.player_profiles \
    append from storage hc:temp join_team2.player_profile

# play sound
execute as @s \
    at @s \
    run \
    playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 0.25 1 0.25

# free memory
data remove storage hc:temp join_team2
