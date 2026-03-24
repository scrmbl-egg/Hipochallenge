#>hc:team/get_enemy_team
#
# Gets the enemy team of the player.
#
# @context player
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.
# @returns
#   Result: 0 when the player's team has no enemy team.

execute if entity @s[team=hc.Admins] run return fail
execute if entity @s[team=hc.NotPlaying] run return fail
execute if entity @s[team=hc.Spectators] run return fail
$execute if entity @s[team=hc.Team1] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Team2"
$execute if entity @s[team=hc.Team2] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Team1"
$execute if entity @s[team=hc.Neutral] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Neutral"

