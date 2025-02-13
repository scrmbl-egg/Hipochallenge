execute if predicate hipochallenge:teams/has_team2_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"nbt":"vars.teams.team2.name","storage":"minecraft:hipochallenge","color":"green","underlined":true},{"translate":"hc.teams.colors.purple","fallback":"PURPLE","color":"light_purple","bold":true}]}'}
execute unless predicate hipochallenge:teams/has_team2_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team_has_selected_color","fallback":"The %1$s team has selected the %2$s color","with":[{"translate":"hc.teams.team2.default_name","fallback":"Team 2","color":"green","underlined":true},{"translate":"hc.teams.colors.purple","fallback":"PURPLE","color":"light_purple","bold":true}]}'}

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
team modify team2 color light_purple

data modify storage minecraft:hipochallenge vars.teams.team2.color_number set from storage minecraft:hipochallenge consts.teams.purple.color_number
data modify storage minecraft:hipochallenge vars.teams.team2.dust_color set from storage minecraft:hipochallenge consts.teams.purple.dust_color
data modify storage minecraft:hipochallenge vars.teams.team2.text_color set from storage minecraft:hipochallenge consts.teams.purple.text_color
data modify storage minecraft:hipochallenge vars.teams.team2.armor_color set from storage minecraft:hipochallenge consts.teams.purple.armor_color
data modify storage minecraft:hipochallenge vars.teams.team2.trim_material set from storage minecraft:hipochallenge consts.teams.purple.trim_material
