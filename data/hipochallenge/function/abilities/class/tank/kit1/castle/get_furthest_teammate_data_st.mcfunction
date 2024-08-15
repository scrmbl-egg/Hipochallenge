# storage:
    # local_other_uuid
# generates:
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch

$data modify storage minecraft:hipochallenge local_other_pos_x set from entity @p[nbt={UUID:$(local_other_uuid)}] Pos[0]
$data modify storage minecraft:hipochallenge local_other_pos_y set from entity @p[nbt={UUID:$(local_other_uuid)}] Pos[1]
$data modify storage minecraft:hipochallenge local_other_pos_z set from entity @p[nbt={UUID:$(local_other_uuid)}] Pos[2]
$data modify storage minecraft:hipochallenge local_other_yaw set from entity @p[nbt={UUID:$(local_other_uuid)}] Rotation[0]
$data modify storage minecraft:hipochallenge local_other_pitch set from entity @p[nbt={UUID:$(local_other_uuid)}] Rotation[1]