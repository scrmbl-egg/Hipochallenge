# storage:
    # local_spirit_target
    # local_spirit_owner

# nbt={UUID:$(local_spirit_target)}

# $execute on vehicle at @s unless entity @p[nbt={UUID:$(local_spirit_target)},distance=..3] run tp @s ^ ^ ^0.3
# $execute on vehicle at @s if entity @p[nbt={UUID:$(local_spirit_target)},distance=..3] run tp @s ^ ^ ^-0.3

$execute if entity @p[nbt={UUID:$(local_spirit_target)},tag=dead] run data modify entity @s data.target set from storage minecraft:hipochallenge local_spirit_owner

$execute unless entity @p[nbt={UUID:$(local_spirit_target)}] run data modify entity @s data.target set from storage minecraft:hipochallenge local_spirit_owner

$execute at @p[nbt={UUID:$(local_spirit_target)}] positioned ^-0.5 ^1.5 ^-1 run summon marker ~ ~ ~ {Tags:["kill_at_end"],data:{id:445}}

$execute on vehicle at @s run data modify entity @n[nbt={data:{id:445}},type=minecraft:marker] Pos[1] set from entity @p[nbt={UUID:$(local_spirit_target)}] Pos[1]
execute on vehicle at @s as @n[nbt={data:{id:445}},type=minecraft:marker] at @s run tp @s ~ ~2 ~

execute on vehicle at @s run tp @s ~ ~ ~ facing entity @n[nbt={data:{id:445}},type=minecraft:marker] eyes
execute on vehicle at @s if entity @n[nbt={data:{id:445}},type=minecraft:marker] run tp @s ^ ^ ^0.3
execute on vehicle at @s if entity @n[nbt={data:{id:445}},type=minecraft:marker,distance=5..] run tp @s ^ ^ ^0.6
execute on vehicle at @s if entity @n[nbt={data:{id:445}},type=minecraft:marker,distance=10..] run tp @s ^ ^ ^0.6
execute on vehicle at @s if entity @n[nbt={data:{id:445}},type=minecraft:marker,distance=15..] run tp @s ^ ^ ^1
$execute on vehicle at @s if entity @n[nbt={data:{id:445}},type=minecraft:marker,distance=..1] rotated as @p[nbt={UUID:$(local_spirit_target)}] run tp @s ~ ~ ~ facing ^ ^ ^10

kill @e[nbt={data:{id:445}},type=minecraft:marker]