# params:
    # dx
    # dy
    # dz
# generates:
    # local_initial_x
    # local_initial_y
    # local_initial_z
    # local_offset_x
    # local_offset_y
    # local_offset_z
    # local_selector_dx
    # local_selector_dy
    # local_selector_dz

scoreboard objectives add local_000 dummy

scoreboard players set $one_block local_000 1000
scoreboard players set $neg_two local_000 -2
scoreboard players set $two local_000 2

$data modify storage minecraft:hipochallenge local_param_dx set from storage minecraft:hipochallenge $(dx)
$data modify storage minecraft:hipochallenge local_param_dy set from storage minecraft:hipochallenge $(dy)
$data modify storage minecraft:hipochallenge local_param_dz set from storage minecraft:hipochallenge $(dz)

execute store result score $init_x local_000 run data get storage minecraft:hipochallenge local_param_dx 1000
execute store result score $init_y local_000 run data get storage minecraft:hipochallenge local_param_dy 1000
execute store result score $init_z local_000 run data get storage minecraft:hipochallenge local_param_dz 1000
execute store result score $off_dx local_000 run data get storage minecraft:hipochallenge local_param_dx 1000
execute store result score $off_dy local_000 run data get storage minecraft:hipochallenge local_param_dy 1000
execute store result score $off_dz local_000 run data get storage minecraft:hipochallenge local_param_dz 1000
execute store result score $selec_dx local_000 run data get storage minecraft:hipochallenge local_param_dx 1000
execute store result score $selec_dy local_000 run data get storage minecraft:hipochallenge local_param_dy 1000
execute store result score $selec_dz local_000 run data get storage minecraft:hipochallenge local_param_dz 1000

scoreboard players operation $init_x local_000 /= $neg_two local_000
scoreboard players operation $init_y local_000 /= $neg_two local_000
scoreboard players operation $init_z local_000 /= $neg_two local_000
scoreboard players operation $off_dx local_000 *= $two local_000
scoreboard players operation $off_dy local_000 *= $two local_000
scoreboard players operation $off_dz local_000 *= $two local_000
scoreboard players operation $selec_x local_000 -= $one_block local_000
scoreboard players operation $selec_y local_000 -= $one_block local_000
scoreboard players operation $selec_z local_000 -= $one_block local_000

execute store result storage minecraft:hipochallenge local_initial_x double 0.001 run scoreboard players get $init_x local_000
execute store result storage minecraft:hipochallenge local_initial_z double 0.001 run scoreboard players get $init_y local_000
execute store result storage minecraft:hipochallenge local_initial_z double 0.001 run scoreboard players get $init_z local_000
execute store result storage minecraft:hipochallenge local_offset_dx double 0.001 run scoreboard players get $off_dx local_000
execute store result storage minecraft:hipochallenge local_offset_dy double 0.001 run scoreboard players get $off_dy local_000
execute store result storage minecraft:hipochallenge local_offset_dz double 0.001 run scoreboard players get $off_dz local_000
execute store result storage minecraft:hipochallenge local_selector_dx double 0.001 run scoreboard players get $selec_dx local_000
execute store result storage minecraft:hipochallenge local_selector_dy double 0.001 run scoreboard players get $selec_dy local_000
execute store result storage minecraft:hipochallenge local_selector_dz double 0.001 run scoreboard players get $selec_dz local_000

# free memory
scoreboard objectives remove local_000
data remove storage minecraft:hipochallenge local_param_dx
data remove storage minecraft:hipochallenge local_param_dy
data remove storage minecraft:hipochallenge local_param_dz