#>core_hc:game/mode/casual/intermission/on_tick
#
# Function called each tick of the intermission state of the casual game mode.
#
# @returns
#   Result: The next state ID. Nothing when the state must continue. 0 is
#       reserved for ending the match.

# put remaining seconds in bossbar value and name
bossbar set hc:casual/intermission name { \
    translate:"", \
    fallback:"%1$s \u231b | %2$s", \
    with:[ \
        {score:{name:"__$hc_state_remaining_secs",objective:"__hc.Casual"}}, \
        { \
            translate:"hc.selection.kit_and_perk", \
            fallback:"Select your kit & perk", \
        }, \
    ], \
}
execute store result bossbar hc:casual/intermission value \
    run \
    scoreboard players get __$hc_state_remaining_ticks __hc.Casual

# if duration reaches end, go to round_intro state
execute if score __$hc_state_remaining_ticks __hc.Casual matches ..0 \
    run \
    return run \
    data get storage hc:main consts.game.modes[{internal_name:"hc:casual"}].\
    states[{internal_name:"round_intro"}].id
