# get team
function hipochallenge:teams/get/get_self_team {dest_st:"minecraft:hipochallenge",dest_path:"local_self_team"}
# gives ownership of:
    # local_self_team

execute as @s run data modify storage minecraft:hipochallenge local_user_uuid set from entity @s UUID

# in:
    # local_players_team
execute if items entity @s weapon.* *[custom_data={item_id:tank_k1_goat_horn}] at @s run function hipochallenge:vfx/abilities/class/tank/kit1/goat_horn_indicator_st with storage minecraft:hipochallenge

# free memory
data remove storage minecraft:hipochallenge local_self_team
data remove storage minecraft:hipochallenge local_user_uuid
