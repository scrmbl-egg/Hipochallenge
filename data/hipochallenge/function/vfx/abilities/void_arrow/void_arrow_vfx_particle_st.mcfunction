tp @s ~ ~ ~ ~23 ~1
execute if entity @s[x_rotation=90] run tp @s ~ ~ ~ ~ -90

$execute if entity @s[tag=team1] run particle dust{color:$(team1_dust_color),scale:1} ^ ^ ^$(void_arrow_range) 0 0 0 0 0 force
$execute if entity @s[tag=team2] run particle dust{color:$(team2_dust_color),scale:1} ^ ^ ^$(void_arrow_range) 0 0 0 0 0 force
$execute if entity @s[tag=admin] run particle end_rod ^ ^ ^$(void_arrow_range) 0 0 0 0 0 force
$execute if entity @s[tag=spectator] run particle dust{color:[0.000,0.000,0.000],scale:1} ^ ^ ^$(void_arrow_range) 0 0 0 0 0 force
$execute if entity @s[tag=neutral] run particle dust{color:[0.500,0.500,0.500],scale:1} ^ ^ ^$(void_arrow_range) 0 0 0 0 0 force



scoreboard players add #iteration local 1
execute if score #iteration local matches 1..1080 at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_particle with storage minecraft:hipochallenge