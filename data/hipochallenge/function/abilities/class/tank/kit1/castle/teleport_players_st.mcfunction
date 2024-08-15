# storage:
    # local_self_pos_x
    # local_self_pos_y
    # local_self_pos_z
    # local_self_yaw
    # local_self_pitch
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch

# teleport self to other position
$tp @s $(local_other_pos_x) $(local_other_pos_y) $(local_other_pos_z) $(local_other_yaw) $(local_other_pitch)
execute at @s run function hipochallenge:vfx/abilities/tank/kit1/castle_teleport

# teleport other to (previous) self position
$tp @p[nbt={UUID:$(local_other_uuid)}] $(local_self_pos_x) $(local_self_pos_y) $(local_self_pos_z) $(local_self_yaw) $(local_self_pitch)
$execute at @p[nbt={UUID:$(local_other_uuid)}] run function hipochallenge:vfx/abilities/tank/kit1/castle_teleport