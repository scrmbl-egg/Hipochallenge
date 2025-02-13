# if any team's name is not changed, do not perform swap and print error
execute unless predicate hipochallenge:teams/has_team1_name_changed unless predicate hipochallenge:teams/has_team2_name_changed run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.cant_swap_team_names\",\"fallback\":\"Team names can\\'t be swapped since one or more has no custom name\",\"color\":\"red\"}"}

# save swapped names
data modify storage minecraft:hipochallenge local_team1_set_name_params.name set from storage minecraft:hipochallenge vars.teams.team2.name
data modify storage minecraft:hipochallenge local_team2_set_name_params.name set from storage minecraft:hipochallenge vars.teams.team1.name

# set names
function hipochallenge:teams/names/set_team1_name with storage minecraft:hipochallenge local_team1_set_name_params
function hipochallenge:teams/names/set_team2_name with storage minecraft:hipochallenge local_team2_set_name_params

# free memory
data remove storage minecraft:hipochallenge local_team1_set_name_params
data remove storage minecraft:hipochallenge local_team2_set_name_params
