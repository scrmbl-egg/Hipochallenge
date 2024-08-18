
# kit 1
    # castle
    execute as @s[scores={tank_kit1_castle_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_castle_cd}",item_modifier:"hipochallenge:class/tank/kit1/castle"}

    # goat horn
        execute as @s[scores={tank_kit1_goat_horn_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_goat_horn_cd}",item_modifier:"hipochallenge:class/tank/kit1/goat_horn"}
        execute as @a[nbt={Inventory:[{id:"minecraft:goat_horn",components:{"minecraft:custom_data":{item_id:tank_k1_goat_horn}}}]}] run function hipochallenge:abilities/class/tank/kit1/goat_horn/show_targets

# kit 2
    # trident
    execute as @e[type=trident] at @s run function hipochallenge:abilities/class/tank/kit2/trident_st
    execute as @s[scores={tank_kit2_trident_cd=1},gamemode=!creative] at @s run function hipochallenge:abilities/class/tank/kit2/trident/return
    
    # goat horn
    execute as @s[scores={tank_kit2_goat_horn_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k2_goat_horn_cd}",item_modifier:"hipochallenge:class/tank/kit2/goat_horn"}
