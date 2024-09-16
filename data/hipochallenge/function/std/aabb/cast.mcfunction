# params:
    # selector  (entity selector)
    # dx        (volume x component)
    # dy        (volume y component)
    # dz        (volume z component)
    # cmd       (command executed on success) 

# save params
$data modify storage minecraft:hipochallenge local_selector set value "$(selector)"
$data modify storage minecraft:hipochallenge local_dx set value $(dx)
$data modify storage minecraft:hipochallenge local_dy set value $(dy)
$data modify storage minecraft:hipochallenge local_dz set value $(dz)
$data modify storage minecraft:hipochallenge local_cmd set value "$(cmd)"

# get origin offset
execute store result storage minecraft:hipochallenge local_origin_offset_x double -0.5 run data get storage minecraft:hipochallenge local_dx
execute store result storage minecraft:hipochallenge local_origin_offset_y double -0.5 run data get storage minecraft:hipochallenge local_dy
execute store result storage minecraft:hipochallenge local_origin_offset_z double -0.5 run data get storage minecraft:hipochallenge local_dz

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
data remove storage minecraft:hipochallenge local_selector
data remove storage minecraft:hipochallenge local_dx
data remove storage minecraft:hipochallenge local_dy
data remove storage minecraft:hipochallenge local_dz
data remove storage minecraft:hipochallenge local_cmd
data remove storage minecraft:hipochallenge local_origin_offset_x
data remove storage minecraft:hipochallenge local_origin_offset_y
data remove storage minecraft:hipochallenge local_origin_offset_z