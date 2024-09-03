# storage:
    # local_spirit_owner
    # local_spirit_target
    # local_current_iteration

scoreboard objectives add local dummy

$scoreboard players set #iteration local $(local_current_iteration)

$tp @s ~ ~ ~ facing entity @p[nbt={UUID:$(local_spirit_target)}] feet
tp @s ^ ^ ^0.5
$particle dust{color:[0.000,1.000,0.898],scale:0.5} ~ ~ ~ 0 0 0 1 0 normal @p[nbt={UUID:$(local_spirit_owner)}]

$execute if entity @p[nbt={UUID:$(local_spirit_target)},distance=..2] run kill @s
execute if score #iteration local matches 100.. run kill @s

scoreboard players add #iteration local 1
execute store result storage hipochallenge local_current_iteration int 1 run scoreboard players get #iteration local

execute if entity @s as @n[nbt={data:{id:445}},type=minecraft:marker] at @s run function hipochallenge:vfx/abilities/class/tank/kit3/spirit_raycast_st with storage hipochallenge

scoreboard objectives remove local