advancement revoke @s only hipochallenge:used_items/class/tank/kit2/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit2 horn"}

# team with no abilities guard clause
execute if entity @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

# give tag to player
tag @s add tank_kit2_goat_horn_detecting

execute store result score @s tank_kit2_goat_horn_recovery_ticks run data get storage minecraft:hipochallenge TANK_K2_HORN_RECOVERY_TICKS

# handle cooldown
function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k2_goat_horn,cd_item_modifier:"hipochallenge:weapons/class/tank/kit2/goat_horn_cd",cd_score:tank_kit2_goat_horn_cd,cd_const:TANK_K2_HORN_CD_TICKS}