# guard clause
execute as @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}
execute as @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}
execute as @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_armor\",\"fallback\":\"You don't belong in a team that is allowed to equip armor\",\"color\":\"red\"}"}

# team 1
execute as @s[team=team1,predicate=hipochallenge:class/is_tank] run function hipochallenge:equipment/armor/class/equip_tank_armor with storage minecraft:hipochallenge vars.teams.team1
execute as @s[team=team1,predicate=hipochallenge:class/is_marksman] run function hipochallenge:equipment/armor/class/equip_marksman_armor with storage minecraft:hipochallenge vars.teams.team1
execute as @s[team=team1,predicate=hipochallenge:class/is_assassin] run function hipochallenge:equipment/armor/class/equip_assassin_armor with storage minecraft:hipochallenge vars.teams.team1
execute as @s[team=team1,predicate=hipochallenge:class/is_support] run function hipochallenge:equipment/armor/class/equip_support_armor with storage minecraft:hipochallenge vars.teams.team1
execute as @s[team=team1,predicate=hipochallenge:class/is_recon] run function hipochallenge:equipment/armor/class/equip_recon_armor with storage minecraft:hipochallenge vars.teams.team1
execute as @s[team=team1,predicate=hipochallenge:class/is_assault] run function hipochallenge:equipment/armor/class/equip_assault_armor with storage minecraft:hipochallenge vars.teams.team1

# team 2
execute as @s[team=team2,predicate=hipochallenge:class/is_tank] run function hipochallenge:equipment/armor/class/equip_tank_armor with storage minecraft:hipochallenge vars.teams.team2
execute as @s[team=team2,predicate=hipochallenge:class/is_marksman] run function hipochallenge:equipment/armor/class/equip_marksman_armor with storage minecraft:hipochallenge vars.teams.team2
execute as @s[team=team2,predicate=hipochallenge:class/is_assassin] run function hipochallenge:equipment/armor/class/equip_assassin_armor with storage minecraft:hipochallenge vars.teams.team2
execute as @s[team=team2,predicate=hipochallenge:class/is_support] run function hipochallenge:equipment/armor/class/equip_support_armor with storage minecraft:hipochallenge vars.teams.team2
execute as @s[team=team2,predicate=hipochallenge:class/is_recon] run function hipochallenge:equipment/armor/class/equip_recon_armor with storage minecraft:hipochallenge vars.teams.team2
execute as @s[team=team2,predicate=hipochallenge:class/is_assault] run function hipochallenge:equipment/armor/class/equip_assault_armor with storage minecraft:hipochallenge vars.teams.team2

# neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_tank] run function hipochallenge:equipment/armor/class/equip_tank_armor with storage minecraft:hipochallenge consts.teams.neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_marksman] run function hipochallenge:equipment/armor/class/equip_marksman_armor with storage minecraft:hipochallenge consts.teams.neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_assassin] run function hipochallenge:equipment/armor/class/equip_assassin_armor with storage minecraft:hipochallenge consts.teams.neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_support] run function hipochallenge:equipment/armor/class/equip_support_armor with storage minecraft:hipochallenge consts.teams.neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_recon] run function hipochallenge:equipment/armor/class/equip_recon_armor with storage minecraft:hipochallenge consts.teams.neutral
execute as @s[team=neutral,predicate=hipochallenge:class/is_assault] run function hipochallenge:equipment/armor/class/equip_assault_armor with storage minecraft:hipochallenge consts.teams.neutral
