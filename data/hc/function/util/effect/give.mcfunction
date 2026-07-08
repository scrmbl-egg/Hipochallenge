#>hc:util/effect/give
#
# Gives an effect to the calling entity.
#
# @context entity
# @input
#   effect: #[id="mob_effect"] string
#       Effect name.
#   amplifier: int @ 0..
#       Effect amplifier.
#   seconds: (#[canonical] int @ 0.. | "infinite")
#       Duration in seconds of the effect. `"infinite"` can be used to indicate
#       infinite duration.
#   hide_particles: boolean
#       `true` if the particles of the effect are hidden.

# hide particles is a macro from a boolean (which is actually a byte),
# so 0 represents false, and non-zero number between -128 and 127 will
# represent true.
$data modify storage hc:temp give_effect set value { \
    hide_particles:$(hide_particles), \
}

# give effect
$execute unless data storage hc:temp give_effect{hide_particles:0} \
    run \
    effect give @s $(effect) $(seconds) $(amplifier) true
$execute if data storage hc:temp give_effect{hide_particles:0} \
    run \
    effect give @s $(effect) $(seconds) $(amplifier) false

# free memory
data remove storage hc:temp give_effect
