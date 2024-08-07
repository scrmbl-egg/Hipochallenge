execute if predicate hipochallenge:teams/has_team2_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"nbt":"team2_name","storage":"minecraft:hipochallenge","color":"green"},{"translate":"hc.teams.colors.red","fallback":"RED","color":"red","bold":true}]}'}
execute unless predicate hipochallenge:teams/has_team2_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"translate":"hc.teams.team2.default_name","fallback":"Team 2","color":"green"},{"translate":"hc.teams.colors.red","fallback":"RED","color":"red","bold":true}]}'}

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
team modify team2 color red

data modify storage minecraft:hipochallenge team2_color set from storage minecraft:hipochallenge RED_TEAM_TEXT_COLOR
data modify storage minecraft:hipochallenge team2_trim set from storage minecraft:hipochallenge RED_TEAM_TRIM_MATERIAL
data modify storage minecraft:hipochallenge team2_dust_color set from storage minecraft:hipochallenge RED_TEAM_DUST_COLOR
data modify storage minecraft:hipochallenge team2_armor_color set from storage minecraft:hipochallenge RED_TEAM_ARMOR_COLOR
data modify storage minecraft:hipochallenge team2_color_number set from storage minecraft:hipochallenge RED_TEAM_COLOR_NUMBER
