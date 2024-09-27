# storage:
    # local_spirit_target
    # TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS

$execute at @p[nbt={UUID:$(local_spirit_target)},distance=..$(TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS)] run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal @a