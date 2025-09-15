#>hipochallenge:util/effect/give
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
#   hide_particles: ("true" | "false")
#       `true` if the particles of the effect are hidden.

$effect give @s $(effect) $(seconds) $(amplifier) $(hide_particles)
