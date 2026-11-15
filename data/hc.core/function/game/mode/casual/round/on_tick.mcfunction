#>hc.core:game/mode/casual/round/on_tick
#
# Function called each tick of the round state of the casual game mode.

## UPDATE BOSSBAR
# put remaining seconds in bossbar value and name
# TODO: translate
bossbar set hc:casual/round name { \
    translate:"", \
    fallback:"%1$s \u231b", \
    with:[ \
        {score:{name:"hc:state/remaining_secs",objective:"__hc.Casual"}}, \
    ], \
}
execute store result bossbar hc:casual/round value \
    run \
    scoreboard players get hc:state/remaining_ticks __hc.Casual

# change between the 3 colors depending on the current remaining ticks
execute if predicate { \
    type:"minecraft:int_value_check", \
    test:{ \
        min:{ \
            type:"minecraft:add", \
            inputs:["hc:game/mode/casual/round/yellow_bossbar_ticks", 1], \
        }, \
        max:"std:types/int/max", \
    }, \
    value:{ \
        type:"minecraft:score", \
        score:"__hc.Casual", \
        target:{type:"minecraft:fixed",name:"hc:state/remaining_ticks"}, \
    }, \
} \
    run \
    bossbar set hc:casual/round color green
execute if predicate { \
    type:"minecraft:int_value_check", \
    test:{ \
        min:{ \
            type:"minecraft:add", \
            inputs:["hc:game/mode/casual/round/red_bossbar_ticks", 1], \
        }, \
        max:"hc:game/mode/casual/round/yellow_bossbar_ticks", \
    }, \
    value:{ \
        type:"minecraft:score", \
        score:"__hc.Casual", \
        target:{type:"minecraft:fixed",name:"hc:state/remaining_ticks"}, \
    }, \
} \
    run \
    bossbar set hc:casual/round color yellow
execute if predicate { \
    type:"minecraft:int_value_check", \
    test:{ \
        min:0, \
        max:"hc:game/mode/casual/round/red_bossbar_ticks", \
    }, \
    value:{ \
        type:"minecraft:score", \
        score:"__hc.Casual", \
        target:{type:"minecraft:fixed",name:"hc:state/remaining_ticks"}, \
    }, \
} \
    run \
    bossbar set hc:casual/round color red


## if time expires, go to sudden death
execute if score hc:state/remaining_ticks __hc.Casual matches ..0 \
    run \
    return run \
    data get storage hc:main consts.game.modes[{key:"hc:casual"}].\
    states[{key:"round_sudden_death"}].id
