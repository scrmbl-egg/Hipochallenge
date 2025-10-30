#>hc:util/select_player
#
# Attempts to select a player. When a player is successfully targetted, it makes
# the selected player execute a command.
#
# @context player
# @input
#   target_mode: ::Hipochallenge::mcdoc::player_selection::PlayerSelectionTargetMode
#       Target mode, which specifies which players will be selected.
#   max_distance: float @ 0..
#       Maximum amount of distance the target can be from the executing player
#       to be selected.
#   on_selected_command: #[command(max_length=32500)] string
#       Command that the selected player will execute.

# setup temporary memory
$data modify storage hc:temp select_player set value { \
    target_mode:"$(target_mode)", \
    max_distance:$(max_distance), \
    on_selected_command:"$(on_selected_command)", \
    owner_uuid:[I; 0, 0, 0, 0], \
    self_team:"", \
    enemy_team:"", \
}
data modify storage hc:temp select_player.owner_uuid set from entity @s UUID
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_player.self_team", \
}
function hc:team/get_enemy_team { \
    out_storage:"hc:temp", \
    out_nbt:"select_player.enemy_team", \
}

## tag all potential targets within range
execute as @s at @s \
    run \
    function core_hc:util/select_player/tag_potential_targets \
    with storage hc:temp select_player
# targets tag: __hc.SelectPlayerPossibleTarget

## execute command on potential target that is on line of sight
execute as @a[tag=__hc.SelectPlayerPossibleTarget] \
    run \
    function core_hc:util/select_player/check_owner_line_of_sight \
    with storage hc:temp select_player

# remove target tags
execute as @a[tag=__hc.SelectPlayerPossibleTarget] \
    run \
    tag @s remove __hc.SelectPlayerPossibleTarget

# free memory
data remove storage hc:temp select_player
