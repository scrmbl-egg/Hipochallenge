# storage:
    # local_max_health
    # local_armor
    # local_armor_toughness
    # local_scale
    # local_burning_time
    # local_explosion_knockback_resistance
#

$attribute @s generic.max_health base set $(local_max_health)
$attribute @s generic.armor base set $(local_armor)
$attribute @s generic.armor_toughness base set $(local_armor_toughness)
$attribute @s generic.scale base set $(local_scale)
$attribute @s generic.burning_time base set $(local_burning_time)
$attribute @s generic.explosion_knockback_resistance base set $(local_explosion_knockback_resistance)

effect give @s instant_health 1 100 true