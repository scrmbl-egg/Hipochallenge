function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_end

$execute if entity @s[tag=team1] run tp @a[distance=..$(void_arrow_range),team=team2] ~ ~ ~
$execute if entity @s[tag=team2] run tp @a[distance=..$(void_arrow_range),team=team1] ~ ~ ~
$execute if entity @s[tag=admin] run tp @a[distance=..$(void_arrow_range)] ~ ~ ~
$execute if entity @s[tag=spectator] run tp @a[distance=..$(void_arrow_range)] ~ ~ ~
$execute if entity @s[tag=neutral] run tp @a[distance=..$(void_arrow_range),team=neutral] ~ ~ ~

$execute if entity @s[tag=team1] run effect give @a[distance=..$(void_arrow_range),team=team2] slowness 2 2 false
$execute if entity @s[tag=team2] run effect give @a[distance=..$(void_arrow_range),team=team1] slowness 2 2 false
$execute if entity @s[tag=admin] run effect give @a[distance=..$(void_arrow_range)] slowness 2 2 false
$execute if entity @s[tag=spectator] run effect give @a[distance=..$(void_arrow_range)] slowness 2 2 false
$execute if entity @s[tag=neutral] run effect give @a[distance=..$(void_arrow_range),team=neutral] slowness 2 2 false

#$stopsound @a[distance=..$(void_arrow_range)] * minecraft:void_loop
kill @s
function hipochallenge:msg/debug/msg_info {msg:"Destruida habilidad de flecha del vacio"}