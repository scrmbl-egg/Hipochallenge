#>hc:util/effect/give_ability_effects
#
# Gives the calling entity an array of effects.
#
# @context player
#   suppression_ticks: int @ 0..
#       Amount of suppression ticks the ability gives to the
#   effects: [::Hipochallenge::mcdoc::effect::EffectCommandParameters]
#       List of effects that will be applied to the player

# TODO: deprecate this function

# save args
$data modify storage hc:temp ability_effects set value { \
    set_suppression_ticks_args:{ticks:$(suppression_ticks)}, \
    effects:$(effects), \
}

# set suppression score if parameter value is greater than the current score
function hc:mechanic/suppression/set_ticks \
    with storage hc:temp ability_effects.set_suppression_ticks_args

# give each of the effects in the array
function std:array/for_each_unwrap { \
    array_storage:"hc:temp", \
    array_nbt:"ability_effects.effects", \
    function:"hc:util/effect/give", \
    context_args:{}, \
    index_macro:"__index__", \
}

# free memory
data remove storage hc:temp ability_effects
