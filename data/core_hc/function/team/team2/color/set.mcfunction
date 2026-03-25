#>core_hc:team/team2/color/set
#
# Sets the second team's color, and does all necessary updates.
#
# @input
#   internal_name: string
#       Internal name of the color that will replace the previous color.

# set team context in global variables
$data modify storage hc:main vars.team_contexts.team2.color_preset \
    set from storage hc:main \
    consts.team_color_presets[{internal_name:"$(internal_name)"}]

## setup temp data
data modify storage hc:temp set_color set value { \
    set_color_msg_args:{ \
        text:{ \
            translate:"hc.msg.match.team_has_selected_color", \
            fallback:"The %1$s team has selected the %2$s color", \
            with:[{}, {}], \
        }, \
    }, \
    set_vanilla_color_args:{color:""}, \
    set_display_name_args:{ \
        text:{}, \
        prefix_color:"", \
    }, \
    set_name_msg_args:{ \
        text:{ \
            translate:"hc.msg.match.team2_changed_name_to", \
            fallback:"The second team is now called \"%s\"", \
            with:[{}], \
        }, \
    }, \
}
# get set_color_msg_args data (and color certain text components)
function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"set_color.set_color_msg_args.text.with[0]", \
}
data modify storage hc:temp set_color.set_color_msg_args.text.with[0].color \
    set value "gray"
data modify storage hc:temp set_color.set_color_msg_args.text.with[1] \
    set from storage hc:main vars.team_contexts.team2.color_preset.default_name
data modify storage hc:temp set_color.set_color_msg_args.text.with[1].color \
    set from storage hc:main vars.team_contexts.team2.color_preset.vanilla_color

# get set_vanilla_color_args data
data modify storage hc:temp set_color.set_vanilla_color_args.color \
    set from storage hc:main vars.team_contexts.team2.color_preset.vanilla_color

# get set_display_name_args data
execute if data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.set_display_name_args.text \
    set from storage hc:main vars.team_contexts.team2.custom_name
execute unless data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage hc:temp set_color.set_display_name_args.text \
    set from storage hc:main vars.team_contexts.team2.color_preset.default_name
data modify storage hc:temp set_color.set_display_name_args.prefix_color \
    set from storage hc:main vars.team_contexts.team2.color_preset.name_color

# get set_name_msg_args data
data modify storage hc:temp set_color.set_name_msg_args.text.with[0] \
    set from storage hc:main vars.team_contexts.team2.color_preset.default_name
data modify storage hc:temp set_color.set_name_msg_args.text.with[0].color \
    set value "gray"


## FUNCTION CALL REGION
# set vanilla color of the team
function core_hc:team/team2/color/set_vanilla \
    with storage hc:temp set_color.set_vanilla_color_args

# if custom name didn't exist, set team name to new preset default name
execute unless data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    function hc:msg/match/send \
    with storage hc:temp set_color.set_name_msg_args

# send color change message
function hc:msg/match/send \
    with storage hc:temp set_color.set_color_msg_args

# set display_name again (to change display text color, nothing else)
function core_hc:team/team2/display_name/set \
    with storage hc:temp set_color.set_display_name_args

# play sound
execute as @a at @s run \
    playsound minecraft:entity.experience_orb.pickup \
    ui @s ~ ~ ~ 1 1

# free memory
data remove storage hc:temp set_color
