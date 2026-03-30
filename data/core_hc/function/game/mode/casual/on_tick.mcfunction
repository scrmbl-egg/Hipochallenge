#>core_hc:game/mode/casual/on_tick
#
# Function that is called each tick of the casual mode.

# decrement score whenever a duration is specified by another state
execute if score __$hc_state_remaining_ticks __hc.Casual matches 0.. \
    run \
    scoreboard players remove __$hc_state_remaining_ticks __hc.Casual 1

# get remaining seconds (add 1 to round UP)
scoreboard players operation \
    __$hc_state_remaining_secs __hc.Casual = \
    __$hc_state_remaining_ticks __hc.Casual
scoreboard players operation \
    __$hc_state_remaining_secs __hc.Casual /= __$hc_tps __hc.Casual
scoreboard players add __$hc_state_remaining_secs __hc.Casual 1
