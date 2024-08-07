# TODO: Code translated join team message.
team join team1 @s

execute if predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"selector":"@s"},{"nbt":"team1_name","storage":"minecraft:hipochallenge","color":"green"}]}'}
execute unless predicate hipochallenge:teams/has_team1_name_changed run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"selector":"@s"},{"translate":"hc.teams.team1.default_name","fallback":"Team 1","color":"green"}]}'}

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1