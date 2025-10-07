#>core_hc:fx/ability/assassin/kit2/stun_mechanism_used
#
# Runs the visual and sound effects for the assassin's stun mechanism when used.
#
# @context player (owner)
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner.

# particles
particle minecraft:end_rod \
    ~ ~1 ~ 0 0.5 0 0.3 15 force @a
$particle minecraft:flash \
    ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[nbt=!{UUID:$(owner_uuid)}]

# sound
playsound minecraft:entity.firework_rocket.twinkle \
    player @a ~ ~ ~ 1 2 0
playsound minecraft:entity.firework_rocket.blast \
    player @a ~ ~ ~ 1 1 0
