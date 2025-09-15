#>core_hc:fx/ability/tank/kit1/used_goat_horn
#
# Runs the visual and sound effects for the tank's first kit's goat horn.
#
# @context player

# particles
particle dust_color_transition{ \
    from_color:[1.000,0.867,0.000], \
    scale:2, \
    to_color:[1.000,0.467,0.000], \
} \
    ~ ~2 ~ 3 1.5 3 1 100 normal

particle dust_color_transition{ \
    from_color:[1.000,0.867,0.000], \
    scale:0.75, \
    to_color:[1.000,0.467,0.000], \
} \
    ~ ~2 ~ 5 2.25 5 1 100 normal

# sounds
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.25
playsound minecraft:block.brewing_stand.brew player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 1 1
