# storage: team1_name

execute as @s[team=team1] run tag @s add local
execute as @s[tag=local] run function hipochallenge:teams/join_spectators

team join team1 @s[tag=!local]
$execute unless entity @s[tag=local] run function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"bold\":false,\"color\":\"aqua\",\"selector\":\"@s\"},{\"bold\":false,\"color\":\"white\",\"text\":\" se ha unido a \"},{\"bold\":false,\"color\":\"green\",\"text\":\"$(team1_name)\"}"}
execute unless entity @s[tag=local] as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1

tag @s[tag=local] remove local