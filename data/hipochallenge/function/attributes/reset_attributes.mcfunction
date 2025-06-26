# NOTE:
# this function has hardcoded values because they are taken directly from the
# minecraft wiki:
# https://minecraft.wiki/w/Attribute
# do not change these values unless they don't match the wiki docs, or are
# modified in new versions

# set attributes whose bases are modified in the game
attribute @s minecraft:max_health base reset
attribute @s minecraft:armor base reset
attribute @s minecraft:armor_toughness base reset
attribute @s minecraft:scale base reset
attribute @s minecraft:burning_time base reset
attribute @s minecraft:explosion_knockback_resistance base reset

# set attributes whose bases aren't modified in the game (in theory)
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:attack_knockback base reset
#attribute @s minecraft:attack_reach base reset (JE combat tests)
attribute @s minecraft:attack_speed base reset
attribute @s minecraft:flying_speed base reset
attribute @s minecraft:follow_range base reset
attribute @s minecraft:knockback_resistance base reset
attribute @s minecraft:luck base reset
attribute @s minecraft:max_absorption base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:block_interaction_range base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:block_break_speed base reset
attribute @s minecraft:gravity base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:fall_damage_multiplier base reset
attribute @s minecraft:mining_efficiency base reset
attribute @s minecraft:movement_efficiency base reset
attribute @s minecraft:oxygen_bonus base reset
attribute @s minecraft:sneaking_speed base reset
attribute @s minecraft:submerged_mining_speed base reset
attribute @s minecraft:sweeping_damage_ratio base reset

# heal player
effect give @s instant_health 1 100 true

# remove modifiers
    # tank modifiers

    # kit 3
        function hipochallenge:attributes/class/modifiers/tank/kit3/remove_armor/remove

        function hipochallenge:attributes/class/modifiers/tank/kit3/spirit/remove_buff

    # assassin modifiers
        function hipochallenge:attributes/class/modifiers/assassin/kit1/parrying/remove
