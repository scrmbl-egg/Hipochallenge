# storage:
    # local_enemy_team
    # TANK_K2_HORN_RADIUS
    # TEAM_SIZE (used to not exaggerate effect when a lot of neutral "teammates" are at the same place)

scoreboard players set @s tank_kit2_goat_horn_nearby_enemies 0
data modify storage minecraft:hipochallenge local_enemy_uuid_array set value []

# get array of nearby enemies
$execute as @a[distance=..$(TANK_K2_HORN_RADIUS),team=$(local_enemy_team),limit=] run data modify storage minecraft:hipochallenge local_enemy_uuid_array append from entity @s UUID

# store length of uuid array in score
execute store result score @s tank_kit2_goat_horn_nearby_enemies run data get storage minecraft:hipochallenge local_enemy_uuid_array


data remove storage minecraft:hipochallenge local_enemy_uuid_array