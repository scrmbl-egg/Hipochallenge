# get motion info
function hipochallenge:abilities/class/tank/kit3/bubble_shield/high_speed_arrows_management/storage_manager

# tag arrow
tag @s add current_arrow

# decide if kill
execute as @s at @s run function hipochallenge:abilities/class/tank/kit3/bubble_shield/high_speed_arrows_management/decide_if_kill with storage minecraft:hipochallenge local_hsa_manager.params

# clear storage & tag
data remove storage minecraft:hipochallenge local_hsa_manager
tag @s remove current_arrow
