# get info
data modify storage minecraft:hipochallenge local_player_uuid set from entity @s UUID

# run
execute as @e[type=marker,tag=spirit_marker] run function hipochallenge:abilities/class/tank/kit3/spirit/kill_finder_st with storage hipochallenge

# remove local data

data remove storage minecraft:hipochallenge local_player_uuid