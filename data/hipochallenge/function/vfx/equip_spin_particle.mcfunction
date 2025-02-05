# TODO: change implementation of the spinning particles. life_timer scoreboard
# is used for decreasing values

scoreboard players add @s life_timer 20

execute at @s run particle happy_villager ^ ^ ^0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^ ^ ^-0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^0.75 ^ ^ 0 0 0 0 0 normal
execute at @s run particle happy_villager ^-0.75 ^ ^ 0 0 0 0 0 normal

execute at @s run tp @s ~ ~0.1 ~ ~10 ~

scoreboard players add @s life_timer 20

execute at @s run particle happy_villager ^ ^ ^0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^ ^ ^-0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^0.75 ^ ^ 0 0 0 0 0 normal
execute at @s run particle happy_villager ^-0.75 ^ ^ 0 0 0 0 0 normal

execute at @s run tp @s ~ ~0.1 ~ ~10 ~

scoreboard players add @s life_timer 20

execute at @s run particle happy_villager ^ ^ ^0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^ ^ ^-0.75 0 0 0 0 0 normal
execute at @s run particle happy_villager ^0.75 ^ ^ 0 0 0 0 0 normal
execute at @s run particle happy_villager ^-0.75 ^ ^ 0 0 0 0 0 normal

execute at @s run tp @s ~ ~0.1 ~ ~10 ~

kill @s[scores={life_timer=360..}]
