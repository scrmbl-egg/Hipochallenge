advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_castle


execute if entity @s[scores={silence_timer=1..}] run return run function hipochallenge:msg/private/msg_private_error {msg:'Silenciado'}


# TODO: hacer msg privado
function hipochallenge:msg/debug/msg_info {msg:'castle pressed'}

execute if entity @s[team=admin] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:'hola'}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:'{"translate":"hc.msg.private.error.not_belonging_to_team_with_abilities","fallback":"You don\'t belong in a team that is allowed to use this ability"}'}
execute if entity @s[team=spectator] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:'{"translate":"hc.msg.private.error.not_belonging_to_team_with_abilities","fallback":"You don\'t belong in a team that is allowed to use this ability"}'}

execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_player_team set value neutral
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_player_team set value team1
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_player_team set value team2

execute as @s run function hipochallenge:abilities/class/tank/kit1/castle_run_st with storage minecraft:hipochallenge

execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}]}] run item modify entity @s weapon.offhand hipochallenge:class/tank/kit1/castle_cooldown
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}}] run item modify entity @s weapon.mainhand hipochallenge:class/tank/kit1/castle_cooldown

data remove storage minecraft:hipochallenge local_player_team