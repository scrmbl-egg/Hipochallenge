execute as @s[team=team1] run function hipochallenge:equipment/armor/equip_team1_armor with storage minecraft:hipochallenge
execute as @s[team=team2] run function hipochallenge:equipment/armor/equip_team2_armor with storage minecraft:hipochallenge
execute as @s[team=neutral] run function hipochallenge:equipment/armor/equip_neutral_armor

execute as @s[team=admin] run function hipochallenge:msg/private/msg_private_error {msg:"No perteneces a un equipo al que se le pueda equipar armadura"}
execute as @s[team=spectator] run function hipochallenge:msg/private/msg_private_error {msg:"No perteneces a un equipo al que se le pueda equipar armadura"}
execute as @s[team=not_playing] run function hipochallenge:msg/private/msg_private_error {msg:"No perteneces a un equipo al que se le pueda equipar armadura"}