# NOTE:
# this function has hardcoded values because they are taken directly from the
# minecraft wiki:
# https://minecraft.wiki/w/Attribute
# do not change these values unless they don't match the wiki docs, or are
# modified in new versions

# set attributes whose bases are modified in the game
attribute @s minecraft:max_health base set 20
attribute @s minecraft:armor base set 0
attribute @s minecraft:armor_toughness base set 0
attribute @s minecraft:scale base set 1
attribute @s minecraft:burning_time base set 1
attribute @s minecraft:explosion_knockback_resistance base set 0

# set attributes whose bases aren't modified in the game (in theory)
attribute @s minecraft:attack_damage base set 1
attribute @s minecraft:attack_knockback base set 0
#attribute @s minecraft:attack_reach base set 2.5 (only exists in JE combat tests)
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:flying_speed base set 0.4
attribute @s minecraft:follow_range base set 32
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:luck base set 0
attribute @s minecraft:max_absorption base set 0
attribute @s minecraft:movement_speed base set 0.1
attribute @s minecraft:step_height base set 0.6
attribute @s minecraft:jump_strength base set 0.41999998688697815
attribute @s minecraft:block_interaction_range base set 4.5
attribute @s minecraft:entity_interaction_range base set 3
attribute @s minecraft:block_break_speed base set 1
attribute @s minecraft:gravity base set 0.08 
attribute @s minecraft:safe_fall_distance base set 3
attribute @s minecraft:fall_damage_multiplier base set 1
attribute @s minecraft:mining_efficiency base set 0
attribute @s minecraft:movement_efficiency base set 0
attribute @s minecraft:oxygen_bonus base set 0
attribute @s minecraft:sneaking_speed base set 0.3
attribute @s minecraft:submerged_mining_speed base set 0.2
attribute @s minecraft:sweeping_damage_ratio base set 0

# heal player
effect give @s instant_health 1 100 true

# remove modifiers
    # tank modifiers
    
    # kit 3
        function hipochallenge:attributes/modifiers/class/tank/kit3/remove_armor/remove_st with storage minecraft:hipochallenge
        
        function hipochallenge:attributes/modifiers/class/tank/kit3/spirit/remove_debuff_st with storage minecraft:hipochallenge
    
    # assassin modifiers
        function hipochallenge:attributes/modifiers/class/assassin/kit1/parrying/remove