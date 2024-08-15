# TANK
# KIT 1
# CASTLE
execute as @s[scores={tank_kit1_castle_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_castle_cd}",item_modifier:"hipochallenge:class/tank/kit1/castle"}

# HORN
execute as @s[scores={tank_kit1_goat_horn_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_goat_horn_cd}",item_modifier:"hipochallenge:class/tank/kit1/goat_horn"}

# KIT2
# TRIDENT
execute as @e[type=trident] at @s run function hipochallenge:abilities/class/tank/kit2/trident_st
execute as @s[scores={tank_kit2_trident_cd=1}] at @s run function hipochallenge:abilities/class/tank/kit2/trident/return