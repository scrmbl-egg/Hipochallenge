#>core_hc:util/select_player/tag_possible_targets
#
# Tags all possible targets for the selection.
#
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

# all check (pvp teams)
$execute at @s \
    if data storage hc:temp select_player{target_mode:"all"} \
    as @a[\
        predicate=hc:team/is_in_pvp_team, \
        nbt=!{UUID:$(owner_uuid)}, \
        distance=..$(max_distance) \
    ] \
    run \
    return run \
    tag @s add __hc.SelectPlayerPossibleTarget

# allies only check
$execute at @s \
    if data storage hc:temp select_player{target_mode:"allies_only"} \
    as @a[\
        team=$(self_team),\
        nbt=!{UUID:$(owner_uuid)}, \
        distance=..$(max_distance) \
    ] \
    run \
    return run \
    tag @s add __hc.SelectPlayerPossibleTarget

# enemies only check
$execute at @s \
    if data storage hc:temp select_player{target_mode:"enemies_only"} \
    as @a[ \
        team=$(enemy_team), \
        nbt=!{UUID:$(owner_uuid)}, \
        distance=..$(max_distance) \
    ] \
    run \
    return run \
    tag @s add __hc.SelectPlayerPossibleTarget
