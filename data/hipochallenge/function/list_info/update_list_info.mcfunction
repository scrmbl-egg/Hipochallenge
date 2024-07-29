#figure out names

#tank
    #class name
    execute as @s if predicate hipochallenge:class/is_tank run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Tanque"
    
    #kit name
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Guardián (1)"
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Tritón (2)"
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Druida (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Glotón (1)"
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Peso pesado (2)"
    execute as @s[predicate=hipochallenge:class/is_tank,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Bastión (3)"
#

#ranger
    #class name
    execute as @s if predicate hipochallenge:class/is_ranger run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Tirador"
    
    #kit name
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Arquero (1)"
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Francotirador (2)"
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Pistolero (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Diana (1)"
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Salvavidas (2)"
    execute as @s[predicate=hipochallenge:class/is_ranger,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Grandes bolsillos (3)"
#

#assassin
    #class name
    execute as @s if predicate hipochallenge:class/is_assassin run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Asesino"
    
    #kit name
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Duelista (1)"
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Fantasma (2)"
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Mercenario (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Sicario (1)"
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Parca (2)"
    execute as @s[predicate=hipochallenge:class/is_assassin,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Acidez (3)"
#

#support
    #class name
    execute as @s if predicate hipochallenge:class/is_support run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Apoyo"
    
    #kit name
    # FIXME: Place proper support kit names
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "(zoner) (1)"
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "(curar) (2)"
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "(bufos & debufos) (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Overclock (1)"
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Espacio personal (2)"
    execute as @s[predicate=hipochallenge:class/is_support,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Sobrecarga (3)"
#

#recon
    #class name
    execute as @s if predicate hipochallenge:class/is_recon run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Reconocimiento"
    
    #kit name
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Ops. especiales (1)"
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Rastreador (2)"
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Teleportador (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Sombra (1)"
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Asimilación (2)"
    execute as @s[predicate=hipochallenge:class/is_recon,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Sabueso (3)"
#

#assault
    #class name
    execute as @s if predicate hipochallenge:class/is_assault run data modify storage minecraft:hipochallenge local_list_info_class_name set value "Asalto"
    
    #kit name
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit1] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Artificiero (1)"
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit2] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Arponero (2)"
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:kit/is_kit3] run data modify storage minecraft:hipochallenge local_list_info_kit_name set value "Comandante (3)"
    
    #perk name
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk1] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Ingeniero (1)"
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk2] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Coraza adaptable (2)"
    execute as @s[predicate=hipochallenge:class/is_assault,predicate=hipochallenge:perk/is_perk3] run data modify storage minecraft:hipochallenge local_list_info_perk_name set value "Velocista (3)"
#

execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_kill_count int 1 run scoreboard players get @s player_kill_count
execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_death_count int 1 run scoreboard players get @s death_count
execute if predicate hipochallenge:class/has_all_options_selected store result storage minecraft:hipochallenge local_list_info_points int 1 run scoreboard players get @s points

execute as @s[team=!admin,team=!spectator] if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:list_info/display_list_info with storage minecraft:hipochallenge

execute as @s unless predicate hipochallenge:class/has_all_options_selected run scoreboard players display numberformat @s player_list_info blank
execute as @s[team=admin] run scoreboard players display numberformat @s player_list_info blank
execute as @s[team=spectator] run scoreboard players display numberformat @s player_list_info blank

#free storage memory
#data remove storage minecraft:hipochallenge local_list_info_class_name
#data remove storage minecraft:hipochallenge local_list_info_kit_name
#data remove storage minecraft:hipochallenge local_list_info_perk_name
#data remove storage minecraft:hipochallenge local_list_info_kill_count
#data remove storage minecraft:hipochallenge local_list_info_death_count
#data remove storage minecraft:hipochallenge local_list_info_points