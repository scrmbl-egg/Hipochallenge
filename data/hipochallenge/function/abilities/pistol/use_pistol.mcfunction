execute at @s run playsound minecraft:gun_use master @a ~ ~ ~ 0.5 1
execute at @s anchored eyes run particle minecraft:dragon_breath ^-0.5 ^-0.2 ^1 0 0 0 0.1 5 normal
execute at @s anchored eyes run particle minecraft:large_smoke ^-0.5 ^-0.2 ^1 0 1 0 0.1 0 normal @s

$execute at @s[team=admin] anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["just_spawned","proyectile","bullet","admin","$(local_id)"]}
$execute at @s[team=team1] anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["just_spawned","proyectile","bullet","team1","$(local_id)"]}
$execute at @s[team=team2] anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["just_spawned","proyectile","bullet","team2","$(local_id)"]}
$execute at @s[team=neutral] anchored eyes positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["just_spawned","proyectile","bullet","neutral","$(local_id)"]}

execute rotated as @s run tp @e[tag=just_spawned,type=marker,limit=1] @s
execute at @s anchored eyes positioned ^ ^ ^1 run tp @e[tag=just_spawned,type=marker,limit=1] ~ ~ ~
tag @e[tag=just_spawned,type=marker,limit=1] remove just_spawned

scoreboard players operation @s cd1 = $cd_pistol var

execute at @s run tp @s ~ ~ ~ ~ ~-30