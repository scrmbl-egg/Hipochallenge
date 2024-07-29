function hipochallenge:msg/all/msg_all {msg:"Color de equipos reestablecido"}
execute at @a as @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
scoreboard players set $team1_color var -1
scoreboard players set $team2_color var -1
team modify team1 color white
team modify team2 color white

data modify storage minecraft:hipochallenge team1_color set value "white"
data modify storage minecraft:hipochallenge team1_trim set value "quartz"
data modify storage minecraft:hipochallenge team1_dust_color set value "[1.000,1.000,1.000]"
data modify storage minecraft:hipochallenge team1_armor_color set value 13224393
data modify storage minecraft:hipochallenge team1_color_number set value 0
data modify storage minecraft:hipochallenge team2_color set value "white"
data modify storage minecraft:hipochallenge team2_trim set value "quartz"
data modify storage minecraft:hipochallenge team2_dust_color set value "[1.000,1.000,1.000]"
data modify storage minecraft:hipochallenge team2_armor_color set value 13224393
