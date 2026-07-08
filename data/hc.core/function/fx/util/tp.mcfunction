#>hc.core:fx/util/tp
#
# Runs the visual and sound effects for teleporting.
#
# @context at teleport position

# particle
particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal

# sound
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
