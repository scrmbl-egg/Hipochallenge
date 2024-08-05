# storage:
    # local_list_info_class_name_key
    # local_list_info_class_name_color
    # local_list_info_kit_name_key
    # local_list_info_kit_name_color
    # local_list_info_perk_name_key
    # local_list_info_perk_name_color
    # local_list_info_class_number
    # local_list_info_kit_number
    # local_list_info_perk_number
    # local_list_info_kill_count
    # local_list_info_death_count
    # local_list_info_points
#

$execute as @s[tag=detected] run scoreboard players display numberformat @s player_list_info fixed ["",{"translate":"$(local_list_info_class_name_key)","fallback":"Class %s","with":["$(local_list_info_class_number)"],"color":"$(local_list_info_class_name_color)"},{"text":" :: ","color":"gray"},{"translate":"$(local_list_info_kit_name_key)","fallback":"Kit %s","with":["$(local_list_info_kit_number)"],"color":"$(local_list_info_kit_name_color)"},{"text":" :: ","color":"gray"},{"translate":"$(local_list_info_perk_name_key)","fallback":"Perk %s","with":["$(local_list_info_perk_number)"],"color":"$(local_list_info_perk_name_color)"},{"text":" - ","color":"gray"},{"text":"$(local_list_info_kill_count)","color":"yellow"},{"text":" \ud83d\udde1","color":"green"},{"text":" :: ","color":"gray"},{"text":"$(local_list_info_death_count)","color":"yellow"},{"text":" \u2620","color":"red"},{"text":" :: ","color":"gray"},{"text":"$(local_list_info_points)","color":"yellow"},{"text":" \u2605 ","color":"gold"}]

$execute as @s[tag=!detected] run scoreboard players display numberformat @s player_list_info fixed ["",{"translate":"$(local_list_info_class_name_key)","fallback":"Class %s","with":["$(local_list_info_class_number)"],"color":"$(local_list_info_class_name_color)"},{"text":" :: ","color":"gray"},{"text":"?","color":"gray"},{"text":" :: ","color":"gray"},{"text":"?","color":"gray"},{"text":" - ","color":"gray"},{"text":"$(local_list_info_kill_count)","color":"yellow"},{"text":" \ud83d\udde1","color":"green"},{"text":" :: ","color":"gray"},{"text":"$(local_list_info_death_count)","color":"yellow"},{"text":" \u2620","color":"red"},{"text":" :: ","color":"gray"},{"text":"$(local_list_info_points)","color":"yellow"},{"text":" \u2605 ","color":"gold"}]