#>hc.core:util/attribute/class/apply_attributes
#
# Applies all base attributes of a class to the player.
#
# @context player
# @input
#   max_health: double
#       Max Health attribute value.
#   armor: double
#       Armor attribute value.
#   armor_toughness: double
#       Armor Toughness attribute value.
#   scale: double
#       Scale attribute value.
#   burning_time: double
#       Burning_time attribute value.
#   explosion_knockback_resistance: double
#       Explosion_knockback_resistance attribute value.

# for security, reset attributes and modifiers (also heals the player)
function hc:util/attribute/reset_all

# set attributes
$attribute @s minecraft:max_health base \
    set $(max_health)
$attribute @s minecraft:armor base \
    set $(armor)
$attribute @s minecraft:armor_toughness base \
    set $(armor_toughness)
$attribute @s minecraft:scale base \
    set $(scale)
$attribute @s minecraft:burning_time base \
    set $(burning_time)
$attribute @s minecraft:explosion_knockback_resistance base \
    set $(explosion_knockback_resistance)
