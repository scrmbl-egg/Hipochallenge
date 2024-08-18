advancement revoke @s only hipochallenge:used_items/class/tank/kit1/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit1 horn"}

# get team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_players_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_players_team set value "team1"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_players_team set value "team2"

# handle cooldown
function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k1_goat_horn,cd_item_modifier:"hipochallenge:class/tank/kit1/goat_horn_cd",cd_score:tank_kit1_goat_horn_cd,cd_const:TANK_K1_HORN_CD_TICKS}

# give buffs to team
function hipochallenge:abilities/class/tank/kit1/goat_horn/give_buffs_st with storage hipochallenge

# vfx
execute at @s run function hipochallenge:vfx/abilities/tank/kit1/goat_horn_use

# free memory and remove tags
data remove storage minecraft:hipochallenge local_players_team