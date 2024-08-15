advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit1 horn"}

# get team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_players_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_players_team set value "team1"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_players_team set value "team2"

# Remove item
scoreboard objectives add local dummy
execute store result score $has_cd local run data get storage hipochallenge TANK_K1_HORN_CD_TICKS

execute if score $has_cd local matches ..-1 run clear @s goat_horn[custom_data={item_id:tank_k1_goat_horn}] 1
execute if score $has_cd local matches 0.. if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{item_id:tank_k1_goat_horn}}}]}] run item modify entity @s weapon.offhand hipochallenge:class/tank/kit1/goat_horn_cd
execute if score $has_cd local matches 0.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{item_id:tank_k1_goat_horn}}}}] run item modify entity @s weapon.mainhand hipochallenge:class/tank/kit1/goat_horn_cd
execute if score $has_cd local matches 0.. store result score @s tank_kit1_goat_horn_cd run data get storage minecraft:hipochallenge TANK_K1_HORN_CD_TICKS

scoreboard objectives remove local

# Give buffs to team
function hipochallenge:abilities/class/tank/kit1/horn/give_buffs_st with storage hipochallenge

# free memory and remove tags
data remove storage minecraft:hipochallenge local_players_team