team leave @s

execute if predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"selector":"@s","color":"gray"},{"nbt":"team1_name","storage":"minecraft:hipochallenge","color":"green","underlined":true}]}'}
execute unless predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"selector":"@s","color":"gray"},{"translate":"hc.teams.team1.default_name","fallback":"Team 1","color":"green","underlined":true}]}'}

team join team1 @s

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1