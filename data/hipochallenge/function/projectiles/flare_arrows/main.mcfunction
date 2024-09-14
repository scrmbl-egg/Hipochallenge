scoreboard objectives add local dummy

# the uuid is obtained to exclude the owner from being detected
execute on origin run data modify storage minecraft:hipochallenge local_self_uuid set from entity @s UUID

# origin is actually the owner, thanks minecraft!
execute on origin run function hipochallenge:teams/get/get_enemy_team
# gives ownership of:
    # local_enemy_team

# next function sets $must_explode local to 1 if it finds nearby enemies
# in:
    # local_self_uuid
    # local_enemy_team
function hipochallenge:projectiles/flare_arrows/detection/detect_enemies_in_range_st with storage minecraft:hipochallenge

# if it never finds an enemy, explode directly when arrow hits a surface
execute if entity @s[nbt={shake:1b}] run scoreboard players set $must_explode local 1

# in:
    # local_self_uuid
    # local_enemy_team
execute if score $must_explode local matches 1 run function hipochallenge:projectiles/flare_arrows/explode_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_self_uuid
data remove storage minecraft:hipochallenge local_enemy_team