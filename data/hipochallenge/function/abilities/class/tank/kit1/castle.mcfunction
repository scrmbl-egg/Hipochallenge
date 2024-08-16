advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_castle

# team with no abilities guard clause
execute if entity @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

# silenced guard clause
execute if entity @s[scores={silence_timer=1..}] run return run function hipochallenge:msg/private/inject_text/msg_private_inject {txt:'{"color":"red","translate":"hc.msg.private.mechanics.silenced","fallback":"You are silenced!"}'}

function hipochallenge:abilities/class/tank/kit1/castle/get_teleported_players_data_st with storage minecraft:hipochallenge
# gives ownership of:
    # local_self_pos_x
    # local_self_pos_y
    # local_self_pos_z
    # local_self_yaw
    # local_self_pitch
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch

# teleport players (with vfx)
function hipochallenge:abilities/class/tank/kit1/castle/teleport_players_st with storage minecraft:hipochallenge

# get cooldown
scoreboard objectives add local dummy
execute store result score $has_cd local run data get storage hipochallenge TANK_K1_CASTLING_CD_TICKS

# if cooldown is -1 or less, cooldown is infinite, clear item
execute if score $has_cd local matches ..-1 run clear @s *[custom_data={item_id:tank_k1_castle}] 1

# if cooldown is 0 or greater, cooldown exists, replace item with cooldown version and set cooldown constant
execute if score $has_cd local matches 0.. if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}]}] run item modify entity @s weapon.offhand hipochallenge:class/tank/kit1/castle_cd
execute if score $has_cd local matches 0.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{item_id:tank_k1_castle}}}}] run item modify entity @s weapon.mainhand hipochallenge:class/tank/kit1/castle_cd
execute if score $has_cd local matches 0.. store result score @s tank_kit1_castle_cd run data get storage minecraft:hipochallenge TANK_K1_CASTLING_CD_TICKS

# free memory and remove tags
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_players_team
data remove storage minecraft:hipochallenge local_self_pos_x
data remove storage minecraft:hipochallenge local_self_pos_y
data remove storage minecraft:hipochallenge local_self_pos_z
data remove storage minecraft:hipochallenge local_self_yaw
data remove storage minecraft:hipochallenge local_self_pitch
data remove storage minecraft:hipochallenge local_other_uuid
data remove storage minecraft:hipochallenge local_other_pos_x
data remove storage minecraft:hipochallenge local_other_pos_y
data remove storage minecraft:hipochallenge local_other_pos_z
data remove storage minecraft:hipochallenge local_other_yaw
data remove storage minecraft:hipochallenge local_other_pitch
execute as @p[tag=local_other_player] run tag @s remove local_other_player