execute if predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"nbt":"team1_name","storage":"minecraft:hipochallenge","color":"green"},{"translate":"hc.teams.colors.green","fallback":"GREEN","color":"green","bold":true}]}'}
execute unless predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"translate":"hc.teams.team1.default_name","fallback":"Team 1","color":"green"},{"translate":"hc.teams.colors.green","fallback":"GREEN","color":"green","bold":true}]}'}

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
team modify team1 color green

data modify storage minecraft:hipochallenge team1_text_color set from storage minecraft:hipochallenge GREEN_TEAM_TEXT_COLOR
data modify storage minecraft:hipochallenge team1_trim set from storage minecraft:hipochallenge GREEN_TEAM_TRIM_MATERIAL
data modify storage minecraft:hipochallenge team1_dust_color set from storage minecraft:hipochallenge GREEN_TEAM_DUST_COLOR
data modify storage minecraft:hipochallenge team1_armor_color set from storage minecraft:hipochallenge GREEN_TEAM_ARMOR_COLOR
data modify storage minecraft:hipochallenge team1_color_number set from storage minecraft:hipochallenge GREEN_TEAM_COLOR_NUMBER