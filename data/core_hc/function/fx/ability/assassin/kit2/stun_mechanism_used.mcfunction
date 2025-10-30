#>core_hc:fx/ability/assassin/kit2/stun_mechanism_used
#
# Runs the visual and sound effects for the assassin's stun mechanism when used.
#
# @context player

# create temporary tag
tag @s add __hc.Me

# particles
execute anchored eyes \
    positioned ^ ^ ^1 \
    run \
    particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 15 force @a
execute anchored eyes \
    positioned ^ ^ ^1 \
    run \
    particle minecraft:flash{color:-1644826} \
    ~ ~1 ~ 0.1 0.1 0.1 0 1 force @a[tag=!__hc.Me]

# sound
playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1 2 0
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1 0

# remove temporary tag
tag @s remove __hc.Me
