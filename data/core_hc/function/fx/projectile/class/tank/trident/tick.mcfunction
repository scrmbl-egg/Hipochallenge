#>core_hc:fx/projectile/class/tank/trident/tick
#
# Runs the visual and sound effects for each tick the triden is processed.
#
# @context minecraft:trident

# particle
particle minecraft:warped_spore ~ ~ ~ 0.1 0.1 0.1 0 4 force
particle minecraft:mycelium ~ ~ ~ 0 0 0 0 5 force
particle minecraft:dust_color_transition{ \
    from_color:[0.000,1.000,0.933], \
    to_color:[0.000,0.000,0.000], \
    scale:1, \
} \
    ~ ~ ~ 0.1 0.1 0.1 0 4 force
