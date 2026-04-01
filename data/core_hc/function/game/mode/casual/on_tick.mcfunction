#>core_hc:game/mode/casual/on_tick
#
# Function that is called each tick of the casual mode.

# decrement score whenever a duration is specified by another state
execute if score hc:state_remaining_ticks __hc.Casual matches 0.. \
    run \
    scoreboard players remove hc:state_remaining_ticks __hc.Casual 1

# get remaining seconds (add 1 to round UP)
scoreboard players operation \
    hc:state_remaining_secs __hc.Casual = \
    hc:state_remaining_ticks __hc.Casual
scoreboard players operation \
    hc:state_remaining_secs __hc.Casual /= hc:tps __hc.Casual
scoreboard players add hc:state_remaining_secs __hc.Casual 1
