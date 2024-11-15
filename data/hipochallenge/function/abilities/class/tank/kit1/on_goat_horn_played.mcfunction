advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit1 horn"}

# team with no abilities guard clause
execute if entity @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

# silenced guard clause
execute if entity @s[scores={silence_timer=1..}] run return run function hipochallenge:msg/private/inject_text/msg_private_inject {txt:'{"color":"red","translate":"hc.msg.private.mechanics.silenced","fallback":"You are silenced!"}'}

# no cooldown, item must be deleted due to it being a goat horn
# score: tank_kit1_goat_horn_cd
clear @s *[custom_data={item_id:tank_k1_goat_horn}] 1

# get team
function hipochallenge:teams/get/get_self_team
# gives ownership of:
    # local_self_team

# give buffs to team
# in:
    # local_self_team
function hipochallenge:abilities/class/tank/kit1/goat_horn/give_buffs_st with storage minecraft:hipochallenge

# vfx
execute at @s run function hipochallenge:vfx/abilities/class/tank/kit1/goat_horn_use

# free memory and remove tags
data remove storage minecraft:hipochallenge local_self_team