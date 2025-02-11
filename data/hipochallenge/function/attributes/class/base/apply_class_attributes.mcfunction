# params:
    # max_health
    # armor
    # armor_toughness
    # scale
    # burning_time
    # explosion_knockback_resistance
#

# for security, reset attributes and modifiers
function hipochallenge:attributes/reset_attributes

# set attributes
$attribute @s minecraft:max_health base set $(max_health)
$attribute @s minecraft:armor base set $(armor)
$attribute @s minecraft:armor_toughness base set $(armor_toughness)
$attribute @s minecraft:scale base set $(scale)
$attribute @s minecraft:burning_time base set $(burning_time)
$attribute @s minecraft:explosion_knockback_resistance base set $(explosion_knockback_resistance)

# heal
effect give @s instant_health 1 100 true
