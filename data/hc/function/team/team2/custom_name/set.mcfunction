#>hc:team/team2/custom_name/set
#
# Sets the second team's name.
#
# @input
#   name: string @ 1..16
#       New name of the team.
# @returns
#   Success: if the team's name was successfully changed.

# create assertion score
scoreboard objectives add __hc.SetTeamName dummy

# setup temp data
$data modify storage hc:temp set_name set value { \
    input_str:"$(name)", \
    display_name_set_args:{ \
        text:{text:"$(name)"}, \
        prefix_color:"", \
    }, \
}
data modify storage hc:temp set_name.display_name_set_args.prefix_color \
    set from storage hc:main vars.team_contexts.team2.color_preset.name_color

# get input string length
execute store result score hc:strlen __hc.SetTeamName \
    run \
    data get storage hc:temp set_name.input_str

# assert input string length is within range.
execute unless score hc:strlen __hc.SetTeamName matches 1..16 \
    run \
    function hc:msg/team/send_error { \
        team:"hc.Team2", \
        text:{ \
            translate:"hc.msg.team.error.incorrect_custom_name_length", \
            fallback:"Specified custom team name isn't between %1$s and %2$s characters long (Detected length: %3$s)", \
            with:[ \
                "1", \
                "16", \
                {score:{objective:"__hc.SetTeamName",name:"hc:strlen"}}, \
            ], \
        }, \
    }
execute unless score hc:strlen __hc.SetTeamName matches 1..16 \
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
data modify storage hc:main vars.team_contexts.team2.custom_name.text \
    set from storage hc:temp set_name.input_str

# set display name
function core_hc:team/team2/display_name/set \
    with storage hc:temp set_name.display_name_set_args

# send message
function hc:msg/match/send { \
    text:{ \
        translate:"hc.msg.match.team2_changed_name_to", \
        fallback:"The second team is now called \"%s\"", \
        with:[ \
            { \
                storage:"hc:main", \
                nbt:"vars.team_contexts.team2.custom_name.text", \
                color:"gray", \
            }, \
        ], \
    }, \
}

# update text displays
function core_hc:team/text_displays/update_team2

# free memory
scoreboard objectives remove __hc.SetTeamName
data remove storage hc:temp set_name

# return success
return 1
