#>hc:team/name/set_team1_name
#
# Sets the first team's name.
#
# @input
#   name: string @ 1..16
#       New name of the team.
# @returns
#   Success: if the team's name was successfully changed.

# create assertion score
scoreboard objectives add __hc.SetTeamName dummy

# save input
$data modify storage hc:temp set_name.input_str \
    set value "$(name)"

# get input length
execute store result score __$hc_strlen __hc.SetTeamName \
    run \
    data get storage hc:temp set_name.input_str

# assert input string length is within range.
execute unless score __$hc_strlen __hc.SetTeamName matches 1..16 \
    run \
    function hc:msg/team/send_error { \
        team:"hc.Team1", \
        text:{ \
            translate:"hc.msg.team.error.incorrect_custom_name_length", \
            fallback:"Specified custom team name isn't between %1$s and %2$s characters long (Detected length: %3$s)", \
            with:[ \
                "1", \
                "16", \
                {score:{objective:"__hc.SetTeamName",name:"__$hc_strlen"}}, \
            ], \
        }, \
    }
execute unless score __$hc_strlen __hc.SetTeamName matches 1..16 \
    run \
    return run \
    function std:fail { \
        score_objectives:["__hc.SetTeamName"], \
        nbt_paths:[ \
            {storage:"hc:temp",nbt:"set_name"}, \
        ], \
        entity_selectors:[], \
    }

# save new custom name in team context
data modify storage hc:main vars.team_contexts.team1.custom_name.text \
    set from storage hc:temp set_name.input_str

# set team prefix and displayName
data modify storage hc:temp set_name.team set value "hc.Team1"
data modify storage hc:temp set_name.text \
    set from storage hc:main vars.team_contexts.team1.custom_name
data modify storage hc:temp set_name.prefix_color \
    set from storage hc:main vars.team_contexts.team1.preset.name_color
data modify storage hc:temp set_name.team_color \
    set from storage hc:main vars.team_contexts.team1.preset.text_color

function core_hc:team/name/set with storage hc:temp set_name

# send message
function hc:msg/all/send { \
    text:{ \
        translate:"hc.msg.all.team1_changed_name_to", \
        fallback:"The first team is now called \"%s\"", \
        with:[ \
            { \
                storage:"hc:main", \
                nbt:"vars.team_contexts.team1.custom_name.text", \
                color:"gray", \
            }, \
        ], \
    }, \
}

# update text displays
function core_hc:team/text_displays/update_team1

# free memory
scoreboard objectives remove __hc.SetTeamName
data remove storage hc:temp set_name

# return success
return 1
