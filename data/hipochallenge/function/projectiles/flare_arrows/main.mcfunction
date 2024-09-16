scoreboard objectives add local dummy

# the uuid is obtained to exclude the owner from being detected
execute on origin run data modify storage minecraft:hipochallenge local_owner_uuid set from entity @s UUID

# origin is actually the owner, thanks minecraft!
execute on origin run function hipochallenge:teams/get/get_enemy_team
# gives ownership of:
    # local_enemy_team

# get arrow motion for more checks
data modify storage minecraft:hipochallenge local_arrow_motion_x set from entity @s Motion[0]
data modify storage minecraft:hipochallenge local_arrow_motion_y set from entity @s Motion[1]
data modify storage minecraft:hipochallenge local_arrow_motion_z set from entity @s Motion[2]

# in:
    # local_owner_uuid
    # local_enemy_team
    # local_arrow_motion_x
    # local_arrow_motion_y
    # local_arrow_motion_z
function hipochallenge:projectiles/flare_arrows/detection/cast_aabbs_st with storage minecraft:hipochallenge
# sets $must_explode local score to 1 if the internal aabb cast works

# if it never finds an enemy, explode directly when arrow hits a surface
execute if entity @s[nbt={shake:1b}] run scoreboard players set $must_explode local 1

# in:
    # local_owner_uuid
    # local_enemy_team
execute if score $must_explode local matches 1 run function hipochallenge:projectiles/flare_arrows/explode_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_owner_uuid
data remove storage minecraft:hipochallenge local_enemy_team
data remove storage minecraft:hipochallenge local_arrow_motion_x
data remove storage minecraft:hipochallenge local_arrow_motion_y
data remove storage minecraft:hipochallenge local_arrow_motion_z