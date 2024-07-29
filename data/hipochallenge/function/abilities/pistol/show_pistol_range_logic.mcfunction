scoreboard players add @s timer 1

tp @s ~ ~ ~ ~1 ~
$particle dust{color:[0.667,0.000,1.000],scale:0.5} ^ ^ ^$(local_range) 0 0 0 0 0 normal @a[tag=me,gamemode=!spectator,limit=1]

kill @s[scores={timer=360..}]
execute as @s[scores={timer=..360}] at @s run function hipochallenge:abilities/pistol/show_pistol_range_logic with storage minecraft:hipochallenge