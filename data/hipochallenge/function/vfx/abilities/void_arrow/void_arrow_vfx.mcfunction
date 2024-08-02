execute if entity @s[scores={timer=1}] at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_circle_frame_st with storage minecraft:hipochallenge

particle dust{color:[0.000,0.000,0.000],scale:2} ~ ~ ~ 2 2 2 1 20 force
particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0 5 force

playsound minecraft:void_loop master @a ~ ~ ~ 0.35 2

$execute if entity @s[tag=team1] as @a[distance=..$(void_arrow_range),team=team2] at @s run particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force
$execute if entity @s[tag=team2] as @a[distance=..$(void_arrow_range),team=team1] at @s run particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force
$execute if entity @s[tag=admin] as @a[distance=..$(void_arrow_range)] at @s run particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force
$execute if entity @s[tag=spectator] as @a[distance=..$(void_arrow_range)] at @s run particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force
$execute if entity @s[tag=neutral] as @a[distance=..$(void_arrow_range),team=neutral] at @s run particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force