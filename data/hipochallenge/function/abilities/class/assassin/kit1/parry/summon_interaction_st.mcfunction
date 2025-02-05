# storage:
    # local_self_uuid
    # local_self_team
    # ASSASSIN_K1_PARRY_INTERACTION_SUMMON_DISTANCE
    # ASSASSIN_K1_PARRY_INTERACTION_GLOBAL_Y_OFFSET
    # ASSASSIN_K1_PARRY_INTERACTION_HEIGHT
    # ASSASSIN_K1_PARRY_INTERACTION_WIDTH
    # ASSASSIN_K1_PARRY_INTERACTION_LIFETIME_TICKS

# TODO: save the interaction's spawn position relative to the player

scoreboard objectives add local dummy

# summon interaction and marker holding data
$execute as @s at @s positioned ~ ~$(ASSASSIN_K1_PARRY_INTERACTION_GLOBAL_Y_OFFSET) ~ anchored eyes run summon interaction ^ ^ ^$(ASSASSIN_K1_PARRY_INTERACTION_SUMMON_DISTANCE) {width:$(ASSASSIN_K1_PARRY_INTERACTION_WIDTH),height:$(ASSASSIN_K1_PARRY_INTERACTION_HEIGHT),Tags:["new_0"],Passengers:[{id:"minecraft:marker",data:{owner:$(local_self_uuid),team:$(local_self_team)}}]}

# set lifetime
$execute as @n[type=interaction,tag=new_0] run scoreboard players set @s life_timer $(ASSASSIN_K1_PARRY_INTERACTION_LIFETIME_TICKS)

# save relative position from player (intr - player)

# get interaction's position: for small performance boost, save in storage,
# and get components from there
data modify storage minecraft:hipochallenge local_interaction_pos set from entity @n[type=interaction,tag=new_0] Pos
data modify storage minecraft:hipochallenge local_owner_pos set from entity @s Pos

# get components as score (scaled by 1000)
execute store result score $intr_x local run data get storage minecraft:hipochallenge local_interaction_pos[0] 1000
execute store result score $intr_y local run data get storage minecraft:hipochallenge local_interaction_pos[1] 1000
execute store result score $intr_z local run data get storage minecraft:hipochallenge local_interaction_pos[2] 1000
execute store result score $owner_x local run data get storage minecraft:hipochallenge local_owner_pos[0] 1000
execute store result score $owner_y local run data get storage minecraft:hipochallenge local_owner_pos[1] 1000
execute store result score $owner_z local run data get storage minecraft:hipochallenge local_owner_pos[2] 1000

# perform operations
scoreboard players operation $intr_x local -= $owner_x local
scoreboard players operation $intr_y local -= $owner_y local
scoreboard players operation $intr_z local -= $owner_z local

# get data and store in player's score
scoreboard players operation @s assassin_kit1_parry_interaction_relative_pos_x = $intr_x local
scoreboard players operation @s assassin_kit1_parry_interaction_relative_pos_y = $intr_y local
scoreboard players operation @s assassin_kit1_parry_interaction_relative_pos_z = $intr_y local

# change interaction tag
execute as @n[type=interaction,tag=new_0] run tag @s add assassin_k1_parry_interaction
execute as @n[type=interaction,tag=new_0] run tag @s remove new_0

# free memory
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_interaction_pos
data remove storage minecraft:hipochallenge local_owner_pos

