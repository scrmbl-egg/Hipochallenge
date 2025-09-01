#>core_hc:projectile/class/recon/flare_arrow/explode
#
# Makes the flare arrow explode and give effects.
#
# @context minecraft:spectral_arrow
# @input
#   radius: double @ 0..
#       Radius of the explosion.
#   entity_selector: int @ 0..
#       Amount of ticks
#   effects_info: [::Hipochallenge::mcdoc::effect::AbilityEffects]
#       Information about the effects that are going to be given to the
#       selected players.

# fx
execute at @s \
    run \
    function core_hc:fx/projectile/class/recon/flare_arrow/explosion

# TODO: implement explosion effects
function hipochallenge:msg/debug/send_info { \
    text:"\"TODO: give flare arrow explosion effects\"", \
}

$execute at @s \
    as $(entity_selector) \
    if entity @s[distance=..$(radius)] \
    run \
    say i was detected by a flare arrow!

kill @s
