#>hipochallenge:team/name/set_team2_name
#
# Sets the second team's name.
#
# @input
#   name: string @ 1..10
#       New name of the team.
# @returns
#   Success: if the team's name was successfully changed.

# create assertion score
scoreboard objectives add local_set_team_name dummy

# save input
# TODO: add some player input validation
$data modify storage minecraft:hipochallenge local_set_name.input_str \
    set value "$(name)"

# get input length
execute store result score $strlen local_set_team_name \
    run \
    data get storage minecraft:hipochallenge local_set_name.input_str

# assert input string length is within range.
execute unless score $strlen local_set_team_name matches 1..12 \
    run \
    function hipochallenge:msg/team/send_error { \
        team:"team2", \
        text:{ \
            translate:"hc.msg.team.error.incorrect_custom_name_length", \
            fallback:"The custom team's name must be between %1$s and %2$s characters long. (Detected length: %3$s)", \
            with:[ \
                "1", \
                "12", \
                {score:{objective:"local_set_team_name",name:"$strlen"}}, \
            ], \
        }, \
    }
execute unless score $strlen local_set_team_name matches 1..12 \
    run \
    return run \
    function std:fail { \
        score_objectives:["local_set_team_name"], \
        nbt_paths:[ \
            {storage:"minecraft:hipochallenge",nbt:"local_set_name"}, \
        ], \
        entity_selectors:[], \
    }

# save new custom name in team context
data modify storage \
    minecraft:hipochallenge vars.team_contexts.team2.custom_name.text \
    set from storage \
    minecraft:hipochallenge local_set_name.input_str

# set team prefix and displayName
data modify storage minecraft:hipochallenge local_set_name.team \
    set value "team2"
data modify storage minecraft:hipochallenge local_set_name.text \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.custom_name
data modify storage minecraft:hipochallenge local_set_name.prefix_color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.name_color
data modify storage minecraft:hipochallenge local_set_name.team_color \
    set from storage \
    minecraft:hipochallenge vars.team_contexts.team2.preset.text_color

function core_hc:team/name/set \
    with storage minecraft:hipochallenge local_set_name

# send message
function hipochallenge:msg/all/send { \
    text:{ \
        translate:"hc.msg.all.team2_changed_name_to", \
        fallback:"The second team is now called %s", \
        with:[ \
            [ \
                {text:"",color:"gray"}, \
                "\"", \
                { \
                    storage:"minecraft:hipochallenge", \
                    nbt:vars.team_contexts.team2.custom_name.text, \
                }, \
                "\"", \
            ] \
        ], \
    }, \
}

# TODO: update text displays

# free memory
scoreboard objectives remove local_set_team_name
data remove storage minecraft:hipochallenge local_set_name

# return success
return 1
