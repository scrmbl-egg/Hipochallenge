#>hc:util/effect/give_override
#
# Gives the calling entity an effect, even if the calling entity already has
# the specified effect with a stronger amplifier or remaining time.
#
# @context entity
# @input
#   effect: #[id="mob_effect"] string
#       Effect name.
#   amplifier: int @ 0..
#       Effect amplifier.
#   seconds: (#[canonical] int @ 1.. | "infinite")
#       Duration in seconds of the effect. `"infinite"` can be used to indicate
#       infinite duration.
#   hide_particles: boolean
#       `true` if the particles of the effect are hidden.

$effect clear @s $(effect)
$execute as @s \
    run \
    function hc:util/effect/give { \
        effect:"$(effect)", \
        amplifier:$(amplifier), \
        seconds:"$(seconds)", \
        hide_particles:$(hide_particles), \
    }
