advancement revoke @s only hipochallenge:used_items/class/tank/kit2/used_goat_horn
function hipochallenge:msg/debug/msg_info {msg:"used kit2 horn"}

# get enemy team
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_players_enemy_team set value "neutral"
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_players_enemy_team set value "team2"
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_players_enemy_team set value "team1"

# remove item
function hipochallenge:abilities/cooldown/handle_item_cd {item_id:tank_k2_goat_horn,cd_item_modifier:"hipochallenge:class/tank/kit2/goat_horn_cd",cd_score:tank_kit2_goat_horn_cd,cd_const:TANK_K2_HORN_CD_TICKS}

# estoy pensando en a lo mejor hacer ^ eso una función (handle_cooldown?)

scoreboard objectives remove local

# add score
execute at @s run function hipochallenge:abilities/class/tank/kit2/goat_horn/start_effect_st with storage minecraft:hipochallenge

# free memory and remove tags
data remove storage minecraft:hipochallenge local_players_team