# set base
attribute @s generic.max_health base set 20
attribute @s generic.armor base set 0
attribute @s generic.armor_toughness base set 0
attribute @s generic.scale base set 1
attribute @s generic.burning_time base set 1
attribute @s generic.explosion_knockback_resistance base set 0

# set base of other attributes (taken from https://minecraft.wiki/w/Attribute)
attribute @s generic.attack_damage base set 1
attribute @s generic.attack_knockback base set 0
#attribute @s generic.attack_reach base set 2.5 (only exists in JE combat tests)
attribute @s generic.attack_speed base set 4
attribute @s generic.flying_speed base set 0.4
attribute @s generic.follow_range base set 32
attribute @s generic.knockback_resistance base set 0
attribute @s generic.luck base set 0
attribute @s generic.max_absorption base set 0
attribute @s generic.movement_speed base set 0.7
attribute @s generic.step_height base set 0.6
attribute @s generic.jump_strength base set 0.41999998688697815
attribute @s player.block_interaction_range base set 4.5
attribute @s player.entity_interaction_range base set 3
attribute @s player.block_break_speed base set 1
attribute @s generic.gravity base set 0.06
attribute @s generic.safe_fall_distance base set 3
attribute @s generic.fall_damage_multiplier base set 1
attribute @s player.mining_efficiency base set 0
attribute @s generic.movement_efficiency base set 0
attribute @s generic.oxygen_bonus base set 0
attribute @s player.sneaking_speed base set 0.3
attribute @s player.submerged_mining_speed base set 0.2
attribute @s player.sweeping_damage_ratio base set 0

# heal player
effect give @s instant_health 1 100 true

# remove modifiers
    # tank modifiers
        function hipochallenge:attributes/modifiers/tank/kit3/remove