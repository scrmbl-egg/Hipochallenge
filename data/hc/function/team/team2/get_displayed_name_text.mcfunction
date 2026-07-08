#>hc:team/team2/get_displayed_name_text
#
# Gets the text component of the name that is currently displayed for the
# second team, i.e. the custom name text component if a custom name was set, or
# the name of the team preset default name if no custom name was set.
#
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.
# @writes
#   Text component in the specified location.

# return custom name text if it exists
$execute if data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage $(out_storage) $(out_nbt) \
    set from storage hc:main vars.team_contexts.team2.custom_name

# return team preset name if custom name is null
$execute unless data storage hc:main vars.team_contexts.team2.custom_name \
    run \
    data modify storage $(out_storage) $(out_nbt) \
    set from storage hc:main vars.team_contexts.team2.color_preset.default_name
