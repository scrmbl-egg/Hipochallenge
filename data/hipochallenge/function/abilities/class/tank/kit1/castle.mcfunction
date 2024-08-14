advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_castle

execute if entity @s[scores={silence_timer=1..}] run return run function hipochallenge:msg/private/inject_text/msg_private_inject {txt:'{"color":"red","translate":"hc.msg.private.mechanics.silenced","fallback":"You are silenced!"}'}

# FIXME: error messages don't display properly

execute if entity @s[team=admin] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectator] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_player_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_player_team set value "team1"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_player_team set value "team2"

execute store result storage minecraft:hipochallenge local_yaw float 1 run data get entity @s Rotation[0]
execute store result storage minecraft:hipochallenge local_pitch float 1 run data get entity @s Rotation[1]

execute as @s run function hipochallenge:abilities/class/tank/kit1/castle_run_st with storage minecraft:hipochallenge

execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}]}] run item modify entity @s weapon.offhand hipochallenge:class/tank/kit1/castle_cooldown
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}}] run item modify entity @s weapon.mainhand hipochallenge:class/tank/kit1/castle_cooldown

data remove storage minecraft:hipochallenge local_player_team
data remove storage minecraft:hipochallenge local_yaw
data remove storage minecraft:hipochallenge local_pitch