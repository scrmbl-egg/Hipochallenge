function hipochallenge:vfx/projectiles/flare_arrow/explode_vfx

execute on origin run function hipochallenge:teams/get/get_self_team
# gives ownership of:
    # local_self_team

# in:
    # local_self_team
function hipochallenge:projectiles/flare_arrows/detect_enemy_players_st with storage minecraft:hipochallenge

# TODO: apply detection & glowing to surrounding enemies

# free memory
data remove storage minecraft:hipochallenge local_self_team