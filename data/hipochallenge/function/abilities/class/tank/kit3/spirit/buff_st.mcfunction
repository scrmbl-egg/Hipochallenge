# storage:
    # local_spirit_target
    # local_spirit_owner
    # TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS

$execute as @p[nbt={UUID:$(local_spirit_target)},distance=..$(TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS)] run function hipochallenge:attributes/modifiers/class/tank/kit3/spirit/add_buff_st with storage hipochallenge