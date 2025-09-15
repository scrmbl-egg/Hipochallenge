#>hipochallenge:util/effect/give_ability_effects
#
# Gives the calling entity an array of effects.
#
# @context player
#   suppression_ticks: int @ 0..
#       Amount of suppression ticks the ability gives to the
#   effects: [::Hipochallenge::mcdoc::effect::EffectCommandParameters]
#       List of effects that will be applied to the player

# set suppression score if parameter value is greater than the current score
$function hipochallenge:mechanic/suppression/set_ticks { \
    ticks:$(suppression_ticks), \
}

# save effect array parameter
$data modify storage hc:temp ability_effects.effect_array set value $(effects)

# iterate through the array, and execute the "give_single" function
function std:array/foreach { \
    array_storage:"hc:temp", \
    array_nbt:"ability_effects.effect_array", \
    function:"core_hc:util/effect/give_ability_effects/give_single", \
    function_storage:"hc:none", \
    function_storage_nbt:"none", \
    element_macro:"current_effect", \
    index_macro:"__index__", \
}

# free memory
data remove storage hc:temp ability_effects
