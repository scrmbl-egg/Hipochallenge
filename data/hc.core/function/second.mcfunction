#>hc.core:second
#
# Datapack function that executes each second (20 ticks).

# schedule next
schedule function hc.core:second 1s

# give infinite hunger
effect give @a minecraft:saturation infinite 0 true
