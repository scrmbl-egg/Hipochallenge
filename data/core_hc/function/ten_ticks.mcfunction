#>core_hc:ten_ticks
#
# Datapack function that executes each half-second (10 ticks).

# schedule next
schedule function core_hc:ten_ticks 10t

# FIXME: move to special level fx function
#execute at @e[tag=drops,type=marker,sort=random,limit=3] run particle minecraft:dripping_dripstone_water ~ ~0.9 ~ 0.5 0 0.5 1 2 force
