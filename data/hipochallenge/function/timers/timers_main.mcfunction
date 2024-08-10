# this function is run every tick

execute as @a[scores={timer=1..}] run scoreboard players remove @s timer 1
execute as @a[scores={cd1=1..}] run scoreboard players remove @s cd1 1
execute as @a[scores={cd2=1..}] run scoreboard players remove @s cd2 1
execute as @a[scores={cd3=1..}] run scoreboard players remove @s cd3 1