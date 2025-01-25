# create score to store bools
scoreboard objectives add local_swap_score dummy

# init fake player to check 2 conditions at the same time
scoreboard players add $team_names_changed local_swap_score 0

# get "has_team_name_changed" bytes/bools as scores
execute store result score $team1_name_changed local_swap_score run data get storage minecraft:hipochallenge has_team1_name_changed 1
execute store result score $team2_name_changed local_swap_score run data get storage minecraft:hipochallenge has_team2_name_changed 1

# add bools, if result is 2, names can be swapped
execute if score $team1_name_changed local_swap_score matches 1 run scoreboard players add $team_names_changed local_swap_score 1
execute if score $team2_name_changed local_swap_score matches 1 run scoreboard players add $team_names_changed local_swap_score 1

# if conditions aren't met, show error
execute unless score $team_names_changed local_swap_score matches 2 run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.cant_swap_team_names\",\"fallback\":\"Team names can\\'t be swapped since one or more has no custom name\",\"color\":\"red\"}"}

# if conditions are met, save swapped names
execute if score $team_names_changed local_swap_score matches 2 run data modify storage minecraft:hipochallenge local_team1_set_name_params.name set from storage minecraft:hipochallenge team2_name
execute if score $team_names_changed local_swap_score matches 2 run data modify storage minecraft:hipochallenge local_team2_set_name_params.name set from storage minecraft:hipochallenge team1_name

# set names
execute if score $team_names_changed local_swap_score matches 2 run function hipochallenge:teams/names/set_team1_name with storage minecraft:hipochallenge local_team1_set_name_params
execute if score $team_names_changed local_swap_score matches 2 run function hipochallenge:teams/names/set_team2_name with storage minecraft:hipochallenge local_team2_set_name_params

# free memory
scoreboard objectives remove local_swap_score
data remove storage minecraft:hipochallenge local_team1_set_name_params
data remove storage minecraft:hipochallenge local_team2_set_name_params