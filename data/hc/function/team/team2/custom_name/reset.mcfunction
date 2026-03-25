#>hc:team/team2/custom_name/reset
#
# Resets the second team's custom name.

# remove team's custom name NBT
data remove storage hc:main vars.team_contexts.team2.custom_name

# setup temp data
data modify storage hc:temp reset_name set value { \
    display_name_set_args:{ \
        text:{}, \
        prefix_color:"", \
    }, \
    msg_args:{ \
        text:{ \
            translate:"hc.msg.match.team2_changed_name_to", \
            fallback:"The second team is now called \"%s\"", \
            with:[{}], \
        }, \
    }, \
}
# get hc:team/display_name/set args
data modify storage hc:temp reset_name.display_name_set_args.text \
    set from storage \
    hc:main vars.team_contexts.team2.color_preset.default_name
data modify storage hc:temp reset_name.display_name_set_args.prefix_color \
    set from storage \
    hc:main vars.team_contexts.team2.color_preset.name_color
# get new name for message and color it gray
function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"reset_name.msg_args.text.with[0]", \
}
data modify storage hc:temp reset_name.msg_args.text.with[0].color \
    set value "gray"

# set preset name as new team name
function core_hc:team/team2/display_name/set \
    with storage hc:temp reset_name.display_name_set_args

# send message
function hc:msg/match/send \
    with storage hc:temp reset_name.msg_args

# free memory
data remove storage hc:temp reset_name
