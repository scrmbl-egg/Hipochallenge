advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit1 horn"}

# team with no abilities guard clause
execute if entity @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

# get team
function hipochallenge:teams/get/get_self_team
# gives ownership of:
    # local_self_team

# handle cooldown
function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k1_goat_horn,cd_item_modifier:"hipochallenge:class/tank/kit1/goat_horn_cd",cd_score:tank_kit1_goat_horn_cd,cd_const:TANK_K1_HORN_CD_TICKS}

# give buffs to team
function hipochallenge:abilities/class/tank/kit1/goat_horn/give_buffs_st with storage minecraft:hipochallenge

# vfx
execute at @s run function hipochallenge:vfx/abilities/class/tank/kit1/goat_horn_use

# free memory and remove tags
data remove storage minecraft:hipochallenge local_self_team