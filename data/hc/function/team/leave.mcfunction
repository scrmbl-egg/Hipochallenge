#>hc:team/leave
#
# Makes the player leave any team they're in. This helper function is needed
# to remove the player profile data from the global team contexts.
#
# @context player

# leave team
team leave @s

# setup func parameters
data modify storage hc:temp team_leave set value { \
    remove_team1_profile_args:{ \
        array_storage:"hc:main", \
        array_nbt:"vars.team_contexts.team1.player_profiles", \
        source_path:{name:""}, \
    }, \
    remove_team2_profile_args:{ \
        array_storage:"hc:main", \
        array_nbt:"vars.team_contexts.team2.player_profiles", \
        source_path:{name:""}, \
    }, \
}

# get player name and insert into source_path parameters
function hc:util/profile/get_name { \
    out_storage:"hc:temp", \
    out_nbt:"team_leave.remove_team1_profile_args.source_path.name", \
}
function hc:util/profile/get_name { \
    out_storage:"hc:temp", \
    out_nbt:"team_leave.remove_team2_profile_args.source_path.name", \
}

# remove elements from arrays
function std:array/remove_element \
    with storage hc:temp team_leave.remove_team1_profile_args
function std:array/remove_element \
    with storage hc:temp team_leave.remove_team2_profile_args

# free memory
data remove storage hc:temp team_leave
