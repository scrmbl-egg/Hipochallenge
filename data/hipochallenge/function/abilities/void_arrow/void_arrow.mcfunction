scoreboard players add @s timer 1

$execute if entity @s[tag=team1] run effect give @a[distance=..$(void_arrow_range),team=team2] slowness 1 0 false
$execute if entity @s[tag=team2] run effect give @a[distance=..$(void_arrow_range),team=team1] slowness 1 0 false
$execute if entity @s[tag=admin] run effect give @a[distance=..$(void_arrow_range)] slowness 1 0 false
$execute if entity @s[tag=spectator] run effect give @a[distance=..$(void_arrow_range)] slowness 1 0 false
$execute if entity @s[tag=neutral] run effect give @a[distance=..$(void_arrow_range),team=neutral] slowness 1 0 false

execute at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx with storage minecraft:hipochallenge

$execute if entity @s[scores={timer=$(void_arrow_duration)..}] at @s run function hipochallenge:abilities/void_arrow/void_arrow_end with storage minecraft:hipochallenge