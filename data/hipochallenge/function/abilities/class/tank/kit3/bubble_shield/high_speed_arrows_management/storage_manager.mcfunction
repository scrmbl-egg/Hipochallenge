# get entity motion
data modify storage minecraft:hipochallenge local_hsa_manager.params.x_motion set from entity @s Motion[0]
data modify storage minecraft:hipochallenge local_hsa_manager.params.y_motion set from entity @s Motion[1]
data modify storage minecraft:hipochallenge local_hsa_manager.params.z_motion set from entity @s Motion[2]

# get entity position
data modify storage minecraft:hipochallenge local_hsa_manager.params.x_pos set from entity @s Pos[0]
data modify storage minecraft:hipochallenge local_hsa_manager.params.y_pos set from entity @s Pos[1]
data modify storage minecraft:hipochallenge local_hsa_manager.params.z_pos set from entity @s Pos[2]

# calculate new position
scoreboard objectives add local_hsa_manager_score dummy

execute store result score $x_future_pos local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.x_pos 1000
execute store result score $y_future_pos local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.y_pos 1000
execute store result score $z_future_pos local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.z_pos 1000

execute store result score $x_motion local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.x_motion 900
execute store result score $y_motion local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.y_motion 900
execute store result score $z_motion local_hsa_manager_score run data get storage minecraft:hipochallenge local_hsa_manager.params.z_motion 900

scoreboard players operation $x_future_pos local_hsa_manager_score += $x_motion local_hsa_manager_score
scoreboard players operation $y_future_pos local_hsa_manager_score += $y_motion local_hsa_manager_score
scoreboard players operation $z_future_pos local_hsa_manager_score += $z_motion local_hsa_manager_score

# store new position
execute store result storage minecraft:hipochallenge local_hsa_manager.params.x_future_pos double 0.001 run scoreboard players get $x_future_pos local_hsa_manager_score
execute store result storage minecraft:hipochallenge local_hsa_manager.params.y_future_pos double 0.001 run scoreboard players get $y_future_pos local_hsa_manager_score
execute store result storage minecraft:hipochallenge local_hsa_manager.params.z_future_pos double 0.001 run scoreboard players get $z_future_pos local_hsa_manager_score

# store bubble shield range and lifetime for future use
data modify storage minecraft:hipochallenge local_hsa_manager.params.range set from storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.radius
data modify storage minecraft:hipochallenge local_hsa_manager.params.lifetime_ticks_refreshed set from storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.lifetime_ticks_added_on_impact

# clear local_hsa_manager
scoreboard objectives remove local_hsa_manager_score

