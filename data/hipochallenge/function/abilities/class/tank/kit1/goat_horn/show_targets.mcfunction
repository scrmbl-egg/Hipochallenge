# get team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_players_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_players_team set value "team1"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_players_team set value "team2"

execute as @s run data modify storage minecraft:hipochallenge local_user_uuid set from entity @s UUID

execute if items entity @s weapon.* goat_horn[custom_data={item_id:tank_k1_goat_horn}] at @s run function hipochallenge:vfx/abilities/tank/kit1/goat_horn_indicator_st with storage minecraft:hipochallenge

# free memory and remove tags
data remove storage minecraft:hipochallenge local_players_team
data remove storage minecraft:hipochallenge local_user_uuid