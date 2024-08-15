# generates:
    # local_self_pos_x
    # local_self_pos_y
    # local_self_pos_z
    # local_self_yaw
    # local_self_pitch
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch
#

# get team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_players_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_players_team set value "team1"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_players_team set value "team2"

# get self data
data modify storage minecraft:hipochallenge local_self_pos_x set from entity @s Pos[0]
data modify storage minecraft:hipochallenge local_self_pos_y set from entity @s Pos[1]
data modify storage minecraft:hipochallenge local_self_pos_z set from entity @s Pos[2]
data modify storage minecraft:hipochallenge local_self_yaw set from entity @s Rotation[0]
data modify storage minecraft:hipochallenge local_self_pitch set from entity @s Rotation[1]

# get other uuid
function hipochallenge:abilities/class/tank/kit1/castle/get_furthest_teammate_uuid_st with storage minecraft:hipochallenge
# gives ownership of:
    # local_other_uuid

# get other data
function hipochallenge:abilities/class/tank/kit1/castle/get_furthest_teammate_data_st with storage minecraft:hipochallenge
# gives ownership of:
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch

# free memory
data remove storage minecraft:hipochallenge local_players_team
# these values are generated, so they are not freed:
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch