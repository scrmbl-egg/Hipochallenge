# params:
    # selector  (entity selector)
    # dx_const  (size x)
    # dy_const  (size y)
    # dz_const  (size z)
    # cmd       (command executed on success)

scoreboard objectives add local_000 dummy
scoreboard players set $one_scaled_block local_000 1000

# save params
$data modify storage minecraft:hipochallenge local_selector set value "$(selector)"
$data modify storage minecraft:hipochallenge local_dx set from storage minecraft:hipochallenge $(dx_const)
$data modify storage minecraft:hipochallenge local_dy set from storage minecraft:hipochallenge $(dy_const)
$data modify storage minecraft:hipochallenge local_dz set from storage minecraft:hipochallenge $(dz_const)
$data modify storage minecraft:hipochallenge local_cmd set value "$(cmd)"

# get origin offset
execute store result storage minecraft:hipochallenge local_origin_offset_x double -0.5 run data get storage minecraft:hipochallenge local_dx
execute store result storage minecraft:hipochallenge local_origin_offset_y double -0.5 run data get storage minecraft:hipochallenge local_dy
execute store result storage minecraft:hipochallenge local_origin_offset_z double -0.5 run data get storage minecraft:hipochallenge local_dz

# check if doing a two volume intersection is necessary (all components must be < 1)

# check if dx, dy and dz >= 1
execute store result score $dx local_000 run data get storage minecraft:hipochallenge local_dx 1000
execute store result score $dy local_000 run data get storage minecraft:hipochallenge local_dy 1000
execute store result score $dz local_000 run data get storage minecraft:hipochallenge local_dz 1000
execute if score $dx local_000 >= $one_scaled_block local_000 run scoreboard players add $less_than_1_components local_000 1
execute if score $dy local_000 >= $one_scaled_block local_000 run scoreboard players add $less_than_1_components local_000 1
execute if score $dz local_000 >= $one_scaled_block local_000 run scoreboard players add $less_than_1_components local_000 1

# if all components (3) are less than 1, subtract 1 from all and set 'local_do_intersection' to
# false, otherwise, set it to true 
execute if score $less_than_1_components local_000 matches 3 run scoreboard players remove $dx local_000 1000
execute if score $less_than_1_components local_000 matches 3 run scoreboard players remove $dy local_000 1000
execute if score $less_than_1_components local_000 matches 3 run scoreboard players remove $dz local_000 1000
execute if score $less_than_1_components local_000 matches 3 run execute store result storage minecraft:hipochallenge local_dx double 0.001 run scoreboard players get $dx local_000
execute if score $less_than_1_components local_000 matches 3 run execute store result storage minecraft:hipochallenge local_dy double 0.001 run scoreboard players get $dx local_000
execute if score $less_than_1_components local_000 matches 3 run execute store result storage minecraft:hipochallenge local_dz double 0.001 run scoreboard players get $dx local_000
execute if score $less_than_1_components local_000 matches 3 run data modify storage minecraft:hipochallenge local_do_intersection set value false

execute unless score $less_than_1_components local_000 matches 3 run data modify storage minecraft:hipochallenge local_do_intersection set value true

# in:
    # local_selector
    # local_dx
    # local_dy
    # local_dz
    # local_cmd
    # local_origin_offset_x
    # local_origin_offset_y
    # local_origin_offset_z
function hipochallenge:std/aabb/internal/test_and_run_cmd_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local_000
data remove storage minecraft:hipochallenge local_selector
data remove storage minecraft:hipochallenge local_dx
data remove storage minecraft:hipochallenge local_dy
data remove storage minecraft:hipochallenge local_dz
data remove storage minecraft:hipochallenge local_cmd
data remove storage minecraft:hipochallenge local_origin_offset_x
data remove storage minecraft:hipochallenge local_origin_offset_y
data remove storage minecraft:hipochallenge local_origin_offset_z
data remove storage minecraft:hipochallenge local_do_intersection