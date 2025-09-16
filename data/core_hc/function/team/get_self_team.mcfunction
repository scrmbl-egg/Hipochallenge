#>core_hc:team/get_self_team
#
# Gets the team name of the player.
#
# @input
#   out_storage: #[id="storage"] string
#       Storage where the result will be stored.
#   out_nbt: #[nbt_path=minecraft:storage[[out_storage]]] string
#       Storage NBT path where the result will be stored.

$execute if entity @s[team=hc.Admins] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Admins"
$execute if entity @s[team=hc.NotPlaying] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.NotPlaying"
$execute if entity @s[team=hc.Spectators] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Spectators"
$execute if entity @s[team=hc.Team1] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Team1"
$execute if entity @s[team=hc.Team2] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Team2"
$execute if entity @s[team=hc.Neutral] \
    run \
    return run \
    data modify storage $(out_storage) $(out_nbt) set value "hc.Neutral"
