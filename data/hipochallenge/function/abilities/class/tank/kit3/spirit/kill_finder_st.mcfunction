# storage
    # local_player_uuid

# declare local
scoreboard objectives add local dummy

# get info
data modify storage minecraft:hipochallenge local_spirit_owner_iteration set from entity @s data.owner
data modify storage minecraft:hipochallenge local_player_uuid_iteration set from storage minecraft:hipochallenge local_player_uuid

# run
execute as @s run function hipochallenge:abilities/class/tank/kit3/spirit/kill_check_st with storage hipochallenge

# remove local data
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_spirit_owner_iteration
data remove storage minecraft:hipochallenge local_player_uuid_iteration