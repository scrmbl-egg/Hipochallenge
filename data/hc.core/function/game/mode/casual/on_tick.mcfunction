#>hc.core:game/mode/casual/on_tick
#
# Function that is called each tick of the casual mode.

# decrement score whenever a duration is specified by another state
execute if score hc:state/remaining_ticks __hc.Casual matches 0.. \
    run \
    scoreboard players remove hc:state/remaining_ticks __hc.Casual 1

# calculate remaining seconds
execute store result score hc:state/remaining_secs __hc.Casual \
    run \
    compute default integer { \
        type:"minecraft:div", \
        left:{ \
            type:"minecraft:add", \
            inputs:[ \
                { \
                    type:"minecraft:score", \
                    score:"__hc.Casual", \
                    target:{ \
                        type:"minecraft:fixed", \
                        name:"hc:state/remaining_ticks" \
                    }, \
                    fallback:0 \
                }, \
                19, \
            ] \
        }, \
        right:20, \
    }
