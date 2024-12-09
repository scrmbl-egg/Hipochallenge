# storage:
    # local_int_self_pos_x (remains the same)
    # local_int_self_pos_y (remains the same)
    # local_int_self_pos_z (remains the same)
    # enemy_uuid (std/array/map macro)

# in:
    # local_int_self_pos_x
    # local_int_self_pos_y
    # local_int_self_pos_z
$execute as @p[nbt={UUID:$(enemy_uuid)}] at @s run function hipochallenge:vfx/abilities/class/tank/kit2/send_armor_st with storage minecraft:hipochallenge

$execute as @p[nbt={UUID:$(enemy_uuid)}] run effect give @s slowness 1 1 false