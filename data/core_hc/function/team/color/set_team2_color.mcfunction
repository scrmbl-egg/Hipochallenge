#>core_hc:team/color/set_team2_color
#
# Sets the second team's color, and does all necessary updates.
#
# @input
#   color_internal_name: string
#       Internal name of the color that will replace the previous color.

# get custom or default team name
execute if \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.team_name \
    set from storage \
    hc:main vars.team_contexts.team2.custom_name
execute unless \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.team_name \
    set from storage \
    hc:main vars.team_contexts.team2.preset.default_name

# construct msg initial parameters
data modify storage hc:temp set_color.msg.text set value { \
    translate:"hc.msg.all.team_has_selected_color", \
    fallback:"The %1$s team has selected the %2$s color", \
    with:[ \
        {}, \
        {}, \
    ], \
}
# set team name first text arg
data modify storage hc:temp set_color.msg.text.with[0] \
    set from storage hc:temp set_color.team_name
# put color in first text arg
data modify storage hc:temp set_color.msg.text.with[0].color \
    set value "gray"
# set name of the selected color
$data modify storage hc:temp set_color.msg.text.with[1] \
    set from storage \
    hc:main \
    consts.team_presets[{internal_name:$(color_internal_name)}].default_name
$data modify storage \
    hc:temp set_color.msg.text.with[1].color \
    set from storage \
    hc:main \
    consts.team_presets[{internal_name:$(color_internal_name)}].text_color

# send message
function hipochallenge:msg/all/send with storage hc:temp set_color.msg

## set team context preset
$data modify storage hc:main vars.team_contexts.team2.preset \
    set from storage hc:main \
    consts.team_presets[{internal_name:$(color_internal_name)}]

# set team name
# if it's custom, obtain it from team_name data
# otherwise, get it again after the preset change
execute if \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.name.text \
    set from storage hc:temp set_color.team_name
execute unless \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.name.text \
    set from storage \
    hc:main vars.team_contexts.team2.preset.default_name

data modify storage hc:temp set_color.name.team \
    set value "hc.Team2"
data modify storage hc:temp set_color.name.prefix_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.name_color
data modify storage hc:temp set_color.name.team_color \
    set from storage \
    hc:main vars.team_contexts.team2.preset.text_color

function core_hc:team/name/set \
    with storage hc:temp set_color.name

# if custom name didn't exist, send an extra change name message
execute unless \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.name_msg.text set value { \
        translate:"hc.msg.all.team2_changed_name_to", \
        fallback:"The first team is now called %s", \
        with:[ \
            [ \
                {text:"",color:"gray"}, \
                "\"", \
                "\"", \
            ] \
        ], \
    }
execute unless \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage \
    hc:temp set_color.name_msg.text.with[0] \
    insert 2 \
    from storage hc:main \
    vars.team_contexts.team2.preset.default_name
execute unless \
    data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    function hipochallenge:msg/all/send with storage hc:temp set_color.name_msg

# play sound
execute as @a at @s run \
    playsound minecraft:entity.experience_orb.pickup \
    master @s ~ ~ ~ 1 1

# free memory
data remove storage hc:temp set_color
