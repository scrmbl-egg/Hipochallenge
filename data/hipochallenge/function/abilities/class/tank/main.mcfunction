# kit 1
    # castle
    execute as @a[scores={tank_kit1_castle_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_castle_cd}",item_modifier:"hipochallenge:weapons/class/tank/kit1/castle"}

    # goat horn
    execute as @a if items entity @s weapon.* *[minecraft:custom_data={item_id:tank_k1_goat_horn}] run function hipochallenge:abilities/class/tank/kit1/goat_horn/show_targets
    execute as @a[scores={tank_kit1_goat_horn_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k1_goat_horn_cd}",item_modifier:"hipochallenge:weapons/class/tank/kit1/goat_horn"}

# kit 2
    # trident
    # TODO: Move this function to the \projectiles folder
    execute as @e[type=trident] at @s run function hipochallenge:abilities/class/tank/kit2/trident_st
    execute as @a[scores={tank_kit2_trident_cd=1},gamemode=!creative] at @s run function hipochallenge:abilities/class/tank/kit2/trident/return
    
    # goat horn
    execute as @a[scores={tank_kit2_goat_horn_cd=1}] run function hipochallenge:replace_item/replace {custom_data:"{item_id:tank_k2_goat_horn_cd}",item_modifier:"hipochallenge:weapons/class/tank/kit2/goat_horn"}

    # goat horn detection
    execute as @a[tag=tank_kit2_goat_horn_detecting,scores={tank_kit2_goat_horn_recovery_ticks=1..}] at @s run function hipochallenge:abilities/class/tank/kit2/goat_horn/detect_enemy_players
# kit 3
    # spirit
    execute as @a run function hipochallenge:attributes/modifiers/class/tank/kit3/spirit/remove_buff_st with storage hipochallenge
    execute as @e[type=marker,tag=spirit_marker] run function hipochallenge:abilities/class/tank/kit3/spirit/main