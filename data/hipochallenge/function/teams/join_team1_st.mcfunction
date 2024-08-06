# storage: team1_name

# TODO: Code translated join team message.

#execute if predicate hipochallenge:teams/color/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"translate":"hc.teams.team1.default_name","fallback":"Team 1","color":"green"},{"translate":"hc.teams.colors.blue","fallback":"BLUE","color":"blue","bold":true}]}'}
#execute unless predicate hipochallenge:teams/color/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"The %1$s team has selected the %2$s color","with":[{"nbt":"team1_name","storage":"minecraft:hipochallenge","color":"green"},{"translate":"hc.teams.colors.blue","fallback":"BLUE","color":"blue","bold":true}]}'}

execute unless entity @s[tag=local] as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1