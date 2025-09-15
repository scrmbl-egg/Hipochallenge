#>hipochallenge:attribute/reset_all
#
# Resets all attributes of a player. Heals the player before applying
# attributes.
#
# @context player

# heal player
effect give @s minecraft:instant_health \
    1 100 true

# reset attributes
attribute @s minecraft:armor base reset
attribute @s minecraft:armor_toughness base reset
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:attack_knockback base reset
#attribute @s minecraft:attack_reach base reset (JE combat tests)
attribute @s minecraft:attack_speed base reset
attribute @s minecraft:block_break_speed base reset
attribute @s minecraft:block_interaction_range base reset
## TODO: check if burning time may as well be always 0, or very small
attribute @s minecraft:burning_time base reset
attribute @s minecraft:camera_distance base reset
attribute @s minecraft:entity_interaction_range base reset
attribute @s minecraft:explosion_knockback_resistance base reset
attribute @s minecraft:flying_speed base reset
attribute @s minecraft:follow_range base reset
attribute @s minecraft:gravity base reset
attribute @s minecraft:jump_strength base reset
attribute @s minecraft:knockback_resistance base reset
attribute @s minecraft:luck base reset
attribute @s minecraft:max_absorption base reset
attribute @s minecraft:max_health base reset
attribute @s minecraft:mining_efficiency base reset
attribute @s minecraft:movement_efficiency base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:oxygen_bonus base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:scale base reset
#attribute @s minecraft:spawn_reinforcements base reset (not player related)
attribute @s minecraft:sneaking_speed base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:submerged_mining_speed base reset
attribute @s minecraft:sweeping_damage_ratio base reset
#attribute @s minecraft:tempt_range base reset (not player related)
attribute @s minecraft:water_movement_efficiency base reset
attribute @s minecraft:waypoint_receive_range base reset
attribute @s minecraft:waypoint_transmit_range base reset

# call all remove modifier
function #core_hc:attribute/remove_modifiers
