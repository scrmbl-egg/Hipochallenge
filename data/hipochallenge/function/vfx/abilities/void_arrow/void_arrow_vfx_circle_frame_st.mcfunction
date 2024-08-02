scoreboard objectives add local dummy

execute at @s run tp @s ~ ~ ~ 90 -90
scoreboard players set #iteration local 1
execute at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_particle_st with storage minecraft:hipochallenge


scoreboard objectives remove local