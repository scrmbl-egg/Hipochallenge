# storage:
    # TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS
    # local_spirit_target

$execute at @p[nbt={UUID:$(local_spirit_target)},distance=..$(TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS)] run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.25 0.25 0.25 0 1 normal @a

data modify storage minecraft:hipochallenge local_current_iteration set value 0

summon marker ~ ~ ~ {Tags:["kill_at_end"],data:{id:445}}
$execute if entity @p[nbt={UUID:$(local_spirit_target)},distance=$(TANK_K3_SPIRIT_BUFF_RANGE_BLOCKS)..] as @n[nbt={data:{id:445}},type=minecraft:marker] at @s run function hipochallenge:vfx/abilities/class/tank/kit3/spirit_raycast_st with storage hipochallenge

# remove local data
data remove storage minecraft:hipochallenge local_current_iteration
kill @e[nbt={data:{id:445}},type=minecraft:marker]