# reset enemy count
scoreboard players set @s tank_kit2_goat_horn_nearby_enemies 0

# init enemy players array
data modify storage minecraft:hipochallenge local_enemy_uuid_array set value []

# get enemy team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_enemy_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_enemy_team set value "team2"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_enemy_team set value "team1"

# fill array with enemy team members
# in:
    # local_enemy_team
function hipochallenge:abilities/class/tank/kit2/goat_horn/fill_enemy_team_uuid_array_st with storage minecraft:hipochallenge

# get self position for next function (must be stored as integers)
execute store result storage minecraft:hipochallenge local_int_self_pos_x int 1 run data get entity @s Pos[0]
execute store result storage minecraft:hipochallenge local_int_self_pos_y int 1 run data get entity @s Pos[1]
execute store result storage minecraft:hipochallenge local_int_self_pos_z int 1 run data get entity @s Pos[2]

# for every uuid in the enemy array, generate a vibration particle and cause effects
# in:
    # local_int_self_pos_x
    # local_int_self_pos_y
    # local_int_self_pos_z
function hipochallenge:std/map/run {array_name:local_enemy_uuid_array,function_st:'hipochallenge:abilities/class/tank/kit2/goat_horn/map_enemy_uuid_array_st'}

# store length of uuid array in score (amount of players)
execute store result score @s tank_kit2_goat_horn_nearby_enemies run data get storage minecraft:hipochallenge local_enemy_uuid_array

# if there are still nearby enemies, reset the recovery ticks
execute as @s if score @s tank_kit2_goat_horn_nearby_enemies matches 1.. run execute store result score @s tank_kit2_goat_horn_recovery_ticks run data get storage minecraft:hipochallenge TANK_K2_HORN_RECOVERY_TICKS

# save nearby enemies as score
execute as @s if score @s tank_kit2_goat_horn_nearby_enemies matches 1.. run execute store result storage minecraft:hipochallenge local_nearby_enemy_count int 1 run scoreboard players get @s tank_kit2_goat_horn_nearby_enemies

# get enemy count as amplifier
# in:
    # local_nearby_enemy_count
execute as @s if score @s tank_kit2_goat_horn_nearby_enemies matches 1.. run function hipochallenge:abilities/class/tank/kit2/goat_horn/get_effect_amplifier_st with storage minecraft:hipochallenge
# gives ownership of:
    # local_effect_amplifier

# in:
    # local_effect_amplifier
execute as @s if score @s tank_kit2_goat_horn_nearby_enemies matches 1.. run function hipochallenge:abilities/class/tank/kit2/goat_horn/give_resistance_effect

# free memory
data remove storage minecraft:hipochallenge local_enemy_uuid_array
data remove storage minecraft:hipochallenge local_int_self_pos_x
data remove storage minecraft:hipochallenge local_int_self_pos_y
data remove storage minecraft:hipochallenge local_int_self_pos_z
data remove storage minecraft:hipochallenge local_nearby_enemy_count
data remove storage minecraft:hipochallenge local_effect_amplifier
scoreboard objectives remove local