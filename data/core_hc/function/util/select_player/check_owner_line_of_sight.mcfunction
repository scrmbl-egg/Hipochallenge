#>core_hc:util/select_player/check_owner_line_of_sight
#
# Checks if the current target is in the owner's line of sight.
#
# @context player (possible selection target)
# @input
#   target_mode: ::Hipochallenge::mcdoc::player_selection::PlayerSelectionTargetMode
#       Target mode, which specifies which players will be selected.
#   max_distance: float @ 0..
#       Maximum amount of distance the target can be from the executing player
#       to be selected.
#   on_selected_command: #[command(max_length=32500)] string
#       Command that the selected player will execute.
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the player that executes the selection.
#   self_team: #[team] string
#       Owner's team name.
#   enemy_team: #[team] string
#       Enemy's team name.

# tag self, as current checked target
tag @s add select_player_me

# check if self (current checked target) is in owner line of sight
$execute as @p[nbt={UUID:$(owner_uuid)}] if predicate { \
    condition: "minecraft:entity_properties", \
    entity: "this", \
    predicate: { \
        type: "minecraft:player", \
        type_specific: { \
            type: "minecraft:player", \
            looking_at: { \
                type: "minecraft:player", \
                nbt: "{Tags:[\"select_player_me\"]}", \
            }, \
        }, \
    }, \
} \
    as @p[tag=select_player_me] \
    run \
    $(on_selected_command)

# remove temporary tag
tag @s remove select_player_me
