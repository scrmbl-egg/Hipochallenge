# storage:
    # TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS
    # local_spirit_target

$execute at @p[nbt={UUID:$(local_spirit_target)},distance=..$(TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS)] run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal @a