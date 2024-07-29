tag @s add me
scoreboard objectives add local dummy
scoreboard players set #4 local 4
$scoreboard players set #range local $(bullet_lifetime)
scoreboard players operation #range local /= #4 local
execute store result storage minecraft:hipochallenge local_range int 1 run scoreboard players get #range local

execute at @s run summon marker ~ ~0.1 ~ {Tags:["pistol_range"]}

execute as @e[tag=pistol_range,type=marker] at @s run function hipochallenge:abilities/pistol/show_pistol_range_logic with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_range
scoreboard objectives remove local
tag @s remove me