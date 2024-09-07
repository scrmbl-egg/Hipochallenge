# storage
    # local_player_uuid_iteration


$execute store success score #checker local run data modify storage minecraft:hipochallenge local_spirit_owner_iteration set value $(local_player_uuid)
execute as @s if score #checker local matches 0 run function hipochallenge:abilities/class/tank/kit3/spirit/kill_killer