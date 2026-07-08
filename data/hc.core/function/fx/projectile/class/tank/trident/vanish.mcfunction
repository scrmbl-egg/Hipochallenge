#>hc.core:fx/projectile/class/tank/vanish
#
# Runs the visual and sound effects for the trident vanishing after hitting
# a surface or entity.
#
# @context minecraft:trident

# particle
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0.1 1 normal

# sound
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 1 0.3
