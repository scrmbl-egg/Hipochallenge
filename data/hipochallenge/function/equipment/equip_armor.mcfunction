execute as @s[team=team1] run function hipochallenge:equipment/armor/equip_team1_armor with storage minecraft:hipochallenge
execute as @s[team=team2] run function hipochallenge:equipment/armor/equip_team2_armor with storage minecraft:hipochallenge
execute as @s[team=neutral] run function hipochallenge:equipment/armor/equip_neutral_armor

execute as @s[team=admin] run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}
execute as @s[team=spectator] run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}
execute as @s[team=not_playing] run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}