# storage:
    # local_max_health
    # local_armor
    # local_armor_toughness
    # local_scale
    # local_burning_time
    # local_explosion_knockback_resistance
#

# for security, reset attributes and modifiers
function hipochallenge:attributes/reset_attributes

# set attributes
$attribute @s minecraft:max_health base set $(local_max_health)
$attribute @s minecraft:armor base set $(local_armor)
$attribute @s minecraft:armor_toughness base set $(local_armor_toughness)
$attribute @s minecraft:scale base set $(local_scale)
$attribute @s minecraft:burning_time base set $(local_burning_time)
$attribute @s minecraft:explosion_knockback_resistance base set $(local_explosion_knockback_resistance)

# special cases

    # tank kit 3 starts with armor modifier
    execute if predicate hipochallenge:class/is_tank if predicate hipochallenge:kit/is_kit3 run function hipochallenge:attributes/modifiers/class/tank/kit3/spirit/add_debuff_st with storage minecraft:hipochallenge

# heal
effect give @s instant_health 1 100 true