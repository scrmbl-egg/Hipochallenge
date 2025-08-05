#>core_hc:team/get_self_team
#
# Gets the team name of the player.
#
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

$execute if entity @s[team=admins] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value admins
$execute if entity @s[team=not_playing] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value not_playing
$execute if entity @s[team=spectators] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value spectators
$execute if entity @s[team=team1] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value team1
$execute if entity @s[team=team2] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value team2
$execute if entity @s[team=neutral] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value neutral
