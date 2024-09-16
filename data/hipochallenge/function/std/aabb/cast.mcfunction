# params:
    # selector  (entity selector)
    # dx        (volume x component)
    # dy        (volume y component)
    # dz        (volume z component)
    # cmd       (command executed on success)

scoreboard objectives add local_000 dummy

scoreboard players set $one_block local_000 1000

# save params
$data modify storage minecraft:hipochallenge local_selector set value "$(selector)"
$data modify storage minecraft:hipochallenge local_param_dx set value $(dx)
$data modify storage minecraft:hipochallenge local_param_dy set value $(dy)
$data modify storage minecraft:hipochallenge local_param_dz set value $(dz)
$data modify storage minecraft:hipochallenge local_cmd set value "$(cmd)"

# get first box origin

# TODO: Make AABBs be able to be executed at any position, regardless of the entity's current position
# this can be done by, instead of saving the second origin's coordinates, simply doing
execute store result score $first_origin_x local_000 run data get entity @s Pos[0] 1000
execute store result score $first_origin_y local_000 run data get entity @s Pos[1] 1000
execute store result score $first_origin_z local_000 run data get entity @s Pos[2] 1000
execute store result score $first_origin_offset_x local_000 run data get storage minecraft:hipochallenge local_param_dx 500
execute store result score $first_origin_offset_y local_000 run data get storage minecraft:hipochallenge local_param_dy 500
execute store result score $first_origin_offset_z local_000 run data get storage minecraft:hipochallenge local_param_dz 500
scoreboard players operation $first_origin_x local_000 -= $first_origin_offset_x local_000
scoreboard players operation $first_origin_y local_000 -= $first_origin_offset_y local_000
scoreboard players operation $first_origin_z local_000 -= $first_origin_offset_z local_000

# get second box origin (first origin -1 block)
scoreboard players operation $second_origin_x local_000 = $first_origin_x local_000
scoreboard players operation $second_origin_y local_000 = $first_origin_y local_000
scoreboard players operation $second_origin_z local_000 = $first_origin_z local_000
scoreboard players operation $second_origin_x local_000 -= $one_block local_000
scoreboard players operation $second_origin_y local_000 -= $one_block local_000
scoreboard players operation $second_origin_z local_000 -= $one_block local_000

# get selector volumes

# FIXME: obtaining these scores is not necessary anymore
execute store result score $dx local_000 run data get storage minecraft:hipochallenge local_param_dx 1000
execute store result score $dy local_000 run data get storage minecraft:hipochallenge local_param_dy 1000
execute store result score $dz local_000 run data get storage minecraft:hipochallenge local_param_dz 1000
#scoreboard players operation $dx local_000 -= $one_block local_000
#scoreboard players operation $dy local_000 -= $one_block local_000
#scoreboard players operation $dz local_000 -= $one_block local_000

# get scores as data for next function
execute store result storage minecraft:hipochallenge local_first_origin_x double 0.001 run scoreboard players get $first_origin_x local_000
execute store result storage minecraft:hipochallenge local_first_origin_y double 0.001 run scoreboard players get $first_origin_y local_000
execute store result storage minecraft:hipochallenge local_first_origin_z double 0.001 run scoreboard players get $first_origin_z local_000
execute store result storage minecraft:hipochallenge local_second_origin_x double 0.001 run scoreboard players get $second_origin_x local_000
execute store result storage minecraft:hipochallenge local_second_origin_y double 0.001 run scoreboard players get $second_origin_y local_000
execute store result storage minecraft:hipochallenge local_second_origin_z double 0.001 run scoreboard players get $second_origin_z local_000
execute store result storage minecraft:hipochallenge local_dx double 0.001 run scoreboard players get $dx local_000
execute store result storage minecraft:hipochallenge local_dy double 0.001 run scoreboard players get $dy local_000
execute store result storage minecraft:hipochallenge local_dz double 0.001 run scoreboard players get $dz local_000

# in:
    # local_selector
    # local_first_origin_x
    # local_first_origin_y
    # local_first_origin_z
    # local_second_origin_x
    # local_second_origin_y
    # local_second_origin_z
    # local_dx
    # local_dy
    # local_dz
    # local_cmd
function hipochallenge:std/aabb/internal/test_and_run_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local_000
data remove storage minecraft:hipochallenge local_selector
data remove storage minecraft:hipochallenge local_param_dx
data remove storage minecraft:hipochallenge local_param_dy
data remove storage minecraft:hipochallenge local_param_dz
data remove storage minecraft:hipochallenge local_first_origin_x
data remove storage minecraft:hipochallenge local_first_origin_y
data remove storage minecraft:hipochallenge local_first_origin_z
data remove storage minecraft:hipochallenge local_second_origin_x
data remove storage minecraft:hipochallenge local_second_origin_y
data remove storage minecraft:hipochallenge local_second_origin_z
data remove storage minecraft:hipochallenge local_dx
data remove storage minecraft:hipochallenge local_dy
data remove storage minecraft:hipochallenge local_dz
data remove storage minecraft:hipochallenge local_cmd