title @s times 0 20 10

execute if score #local_round_win_timer var matches 1 run title @s subtitle {"bold":true,"color":"dark_green","text":" "}
execute if score #local_round_win_timer var matches 1 run title @s title {"color":"gold","text":"RONDA"}
execute if score #local_round_win_timer var matches 3 run title @s title {"bold":true,"color":"aqua","text":"GANADA"}
execute if score #local_round_win_timer var matches 11 run title @s title {"color":"red","italic":true,"text":"RONDA GANADA"}
execute if score #local_round_win_timer var matches 15 run title @s title {"bold":true,"color":"green","text":"RONDA GANADA"}
execute if score #local_round_win_timer var matches 15 run title @s subtitle {"bold":true,"color":"dark_green","text":"¡Bien hecho!"}

execute if score #local_round_win_timer var matches 15.. run tag @s[tag=round_won] remove round_won

# TODO: Rehacer