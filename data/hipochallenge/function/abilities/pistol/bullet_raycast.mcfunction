scoreboard players add @s timer 1

tp @s ^ ^ ^0.25
particle dust_color_transition{from_color:[1.000,0.000,1.000],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0 0 0 0 0 force

execute if block ~ ~ ~ bell run playsound minecraft:ding block @a ~ ~ ~ 0.5 0 0

execute if entity @s[tag=admin] at @s positioned ~ ~-1.5 ~ run damage @a[distance=..0.4,limit=1,sort=nearest,gamemode=!spectator] 5 minecraft:arrow
execute if entity @s[tag=admin] at @s positioned ~ ~-1 ~ run damage @a[distance=..0.5,limit=1,sort=nearest,gamemode=!spectator] 5 minecraft:arrow
execute if entity @s[tag=admin] at @s positioned ~ ~-0.5 ~ run damage @a[distance=..0.4,limit=1,sort=nearest,gamemode=!spectator] 5 minecraft:arrow

execute unless block ~ ~ ~ air run kill @s
$kill @s[scores={timer=$(bullet_lifetime)..}]
$execute at @s[scores={timer=..$(bullet_lifetime)}] run function hipochallenge:abilities/pistol/bullet_raycast with storage minecraft:hipochallenge