# figure out names

# tank
    # class name
    execute as @s if predicate hipochallenge:class/is_tank run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge TANK_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_tank run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge TANK_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_tank run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge TANK_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_tank run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge TANK_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge TANK_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge TANK_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge TANK_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge TANK_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge TANK_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge TANK_P3_NAME_TRANSLATION_KEY
# 

# marksman
    #class name
    execute as @s if predicate hipochallenge:class/is_marksman run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge MARKSMAN_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_marksman run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge MARKSMAN_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_marksman run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge MARKSMAN_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_marksman run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge MARKSMAN_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge MARKSMAN_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge MARKSMAN_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge MARKSMAN_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge MARKSMAN_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge MARKSMAN_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_marksman,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge MARKSMAN_P3_NAME_TRANSLATION_KEY
#

# assassin
    # class name
    execute as @s if predicate hipochallenge:class/is_assassin run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge ASSASSIN_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_assassin run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge ASSASSIN_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_assassin run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge ASSASSIN_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_assassin run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge ASSASSIN_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSASSIN_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSASSIN_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSASSIN_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSASSIN_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSASSIN_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSASSIN_P3_NAME_TRANSLATION_KEY
#

# support
    # class name
    execute as @s if predicate hipochallenge:class/is_support run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge SUPPORT_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_support run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge SUPPORT_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_support run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge SUPPORT_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_support run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge SUPPORT_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge SUPPORT_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge SUPPORT_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge SUPPORT_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge SUPPORT_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge SUPPORT_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge SUPPORT_P3_NAME_TRANSLATION_KEY
#

# recon
    # class name
    execute as @s if predicate hipochallenge:class/is_recon run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge RECON_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_recon run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge RECON_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_recon run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge RECON_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_recon run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge RECON_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge RECON_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge RECON_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge RECON_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge RECON_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge RECON_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge RECON_P3_NAME_TRANSLATION_KEY
#

# assault
    # class name
    execute as @s if predicate hipochallenge:class/is_assault run data modify storage minecraft:hipochallenge local_list_info_class_name_key set from storage minecraft:hipochallenge ASSAULT_CLASS_NAME_TRANSLATION_KEY
    
    # colors
    execute as @s if predicate hipochallenge:class/is_assault run data modify storage minecraft:hipochallenge local_list_info_class_name_color set from storage minecraft:hipochallenge ASSAULT_CLASS_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_assault run data modify storage minecraft:hipochallenge local_list_info_kit_name_color set from storage minecraft:hipochallenge ASSAULT_KIT_LIST_INFO_COLOR
    execute as @s if predicate hipochallenge:class/is_assault run data modify storage minecraft:hipochallenge local_list_info_perk_name_color set from storage minecraft:hipochallenge ASSAULT_PERK_LIST_INFO_COLOR
    
    # kit name
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSAULT_K1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSAULT_K2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name_key set from storage minecraft:hipochallenge ASSAULT_K3_NAME_TRANSLATION_KEY
    
    # perk name
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSAULT_P1_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSAULT_P2_NAME_TRANSLATION_KEY
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name_key set from storage minecraft:hipochallenge ASSAULT_P3_NAME_TRANSLATION_KEY
#

# get scores

execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_class_number int 1 run scoreboard players get @s class

execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_kit_number int 1 run scoreboard players get @s kit

execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_perk_number int 1 run scoreboard players get @s perk

execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_kill_count int 1 run scoreboard players get @s player_kill_count
execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_death_count int 1 run scoreboard players get @s death_count
execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_points int 1 run scoreboard players get @s points

execute as @s[team=!admins,team=!spectators,team=!not_playing] if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:list_info/display_list_info_st with storage minecraft:hipochallenge

execute as @s unless predicate hipochallenge:class/has_all_options_selected run scoreboard players display numberformat @s player_list_info blank
execute as @s[team=admins] run scoreboard players display numberformat @s player_list_info blank
execute as @s[team=spectators] run scoreboard players display numberformat @s player_list_info blank
execute as @s[team=not_playing] run scoreboard players display numberformat @s player_list_info blank

#  free storage memory (holy sh*t)
data remove storage minecraft:hipochallenge local_list_info_class_name_key
data remove storage minecraft:hipochallenge local_list_info_class_name_color
data remove storage minecraft:hipochallenge local_list_info_kit_name_color
data remove storage minecraft:hipochallenge local_list_info_perk_name_color
data remove storage minecraft:hipochallenge local_list_info_kit_name_key
data remove storage minecraft:hipochallenge local_list_info_perk_name_key
data remove storage minecraft:hipochallenge local_list_info_class_number
data remove storage minecraft:hipochallenge local_list_info_kit_number
data remove storage minecraft:hipochallenge local_list_info_perk_number
data remove storage minecraft:hipochallenge local_list_info_kill_count
data remove storage minecraft:hipochallenge local_list_info_death_count
data remove storage minecraft:hipochallenge local_list_info_points