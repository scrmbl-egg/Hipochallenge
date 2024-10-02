advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_castle

# team with no abilities guard clause
execute if entity @s[team=admins] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=not_playing] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}
execute if entity @s[team=spectators] run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"color\":\"red\",\"translate\":\"hc.msg.private.error.not_belonging_to_team_with_abilities\",\"fallback\":\"You don\\'t belong in a team that is allowed to use this ability\"}"}

# silenced guard clause
execute if entity @s[scores={silence_timer=1..}] run return run function hipochallenge:msg/private/inject_text/msg_private_inject {txt:'{"color":"red","translate":"hc.msg.private.mechanics.silenced","fallback":"You are silenced!"}'}

function hipochallenge:abilities/class/tank/kit1/castle/get_teleported_players_data_st with storage minecraft:hipochallenge
# gives ownership of:
    # local_self_pos_x
    # local_self_pos_y
    # local_self_pos_z
    # local_self_yaw
    # local_self_pitch
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch

# teleport players (with vfx)
# in:
    # local_self_pos_x
    # local_self_pos_y
    # local_self_pos_z
    # local_self_yaw
    # local_self_pitch
    # local_other_uuid
    # local_other_pos_x
    # local_other_pos_y
    # local_other_pos_z
    # local_other_yaw
    # local_other_pitch
function hipochallenge:abilities/class/tank/kit1/castle/teleport_players_st with storage minecraft:hipochallenge

# handle cooldown
function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k1_castle,cd_item_modifier:"hipochallenge:weapons/class/tank/kit1/castle_cd",cd_score:tank_kit1_castle_cd,cd_const:TANK_K1_CASTLING_CD_TICKS}

# free memory
data remove storage minecraft:hipochallenge local_self_pos_x
data remove storage minecraft:hipochallenge local_self_pos_y
data remove storage minecraft:hipochallenge local_self_pos_z
data remove storage minecraft:hipochallenge local_self_yaw
data remove storage minecraft:hipochallenge local_self_pitch
data remove storage minecraft:hipochallenge local_other_uuid
data remove storage minecraft:hipochallenge local_other_pos_x
data remove storage minecraft:hipochallenge local_other_pos_y
data remove storage minecraft:hipochallenge local_other_pos_z
data remove storage minecraft:hipochallenge local_other_yaw
data remove storage minecraft:hipochallenge local_other_pitch