# storage:
    # local_int_self_pos_x (remains the same)
    # local_int_self_pos_y (remains the same)
    # local_int_self_pos_z (remains the same)
    # local_element (std/map, enemy UUID)

# in:
    # local_int_self_pos_x
    # local_int_self_pos_y
    # local_int_self_pos_z
$execute as @p[nbt={UUID:$(local_element)}] at @s run function hipochallenge:vfx/abilities/class/tank/kit2/send_armor_st with storage minecraft:hipochallenge

$execute as @p[nbt={UUID:$(local_element)}] run effect give @s slowness 1 1 false