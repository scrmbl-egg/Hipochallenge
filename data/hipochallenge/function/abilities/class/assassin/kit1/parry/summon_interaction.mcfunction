# storage:
    # local_self_uuid
    # local_self_team
    # ASSASSIN_K1_PARRY_INTERACTION_SUMMON_DISTANCE
    # ASSASSIN_K1_PARRY_INTERACTION_GLOBAL_Y_OFFSET
    # ASSASSIN_K1_PARRY_INTERACTION_HEIGHT
    # ASSASSIN_K1_PARRY_INTERACTION_WIDTH
    # ASSASSIN_K1_PARRY_INTERACTION_LIFETIME_TICKS

# summon interaction and marker holding data
$execute as @s at @s positioned ~ ~$(ASSASSIN_K1_PARRY_INTERACTION_GLOBAL_Y_OFFSET) ~ anchored eyes run summon interaction ^ ^ ^$(ASSASSIN_K1_PARRY_INTERACTION_SUMMON_DISTANCE) {width:$(ASSASSIN_K1_PARRY_INTERACTION_WIDTH),height:$(ASSASSIN_K1_PARRY_INTERACTION_HEIGHT),Tags:["new_0"],Passengers:[{id:"minecraft:marker",data:{owner:$(local_self_uuid),team:$(local_self_team)}}]}

# set lifetime
$execute as @n[type=interaction,tag=new_0] run scoreboard players set @s timer $(ASSASSIN_K1_PARRY_INTERACTION_LIFETIME_TICKS)

# change interaction tag
execute as @n[type=interaction,tag=new_0] run tag @s add assassin_k1_parry_interaction
execute as @n[type=interaction,tag=new_0] run tag @s remove new_0
