execute at @s run playsound minecraft:round_win block @s ~ ~ ~ 0.35 0.97
tag @s add round_won
execute unless score #local_round_win_timer var matches 1.. run scoreboard players set #local_round_win_timer var 0
