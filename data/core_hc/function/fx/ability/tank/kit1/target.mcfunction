#>core_hc:fx/ability/tank/kit1/target
#
# Runs the visual and sound effects for the tank's first kit's goat horn
# targets.
#
# @context player (goat horn target)
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner.

$particle dust_color_transition{ \
    from_color:[1.000,0.867,0.000], \
    scale:0.5, \
    to_color:[1.000,0.467,0.000], \
} \
    ~ ~1 ~ 0.25 0.5 0.25 1 15 force @p[nbt={UUID:$(owner_uuid)}]
