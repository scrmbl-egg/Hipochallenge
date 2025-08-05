#>core_hc:team/get_enemy_team
#
# Gets the enemy team of the player.
#
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.
# @returns
#   Result: 0 if no team is found, 1 if team is found.

execute if entity @s[team=admins] run return fail
execute if entity @s[team=not_playing] run return fail
execute if entity @s[team=spectators] run return fail
$execute if entity @s[team=team1] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value team2
$execute if entity @s[team=team2] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value team1
$execute if entity @s[team=neutral] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value neutral
