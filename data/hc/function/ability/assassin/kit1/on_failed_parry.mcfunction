#>hc:ability/assassin/kit1/on_failed_parry
#
# Executes all commands when the player fails the parry with the duelist sword.
#
# @context player

# reset scores back to their original state
# TODO: we should consider actually resetting when timer scores reach 0
# instead of just leaving them in -1
scoreboard players set @s hc.AssassinKit1ParryWindowRemainingTicks -1
scoreboard players set @s hc.AssassinKit1BlockRemainingTicks -1

# modify item
# TODO: this should maybe be data-driven
function hc:util/item/modify_with_id { \
    id:"hc:assassin/kit1/sword", \
    modifier:"hc:item/class/assassin/kit1/sword/disabled", \
}

# fx
# TODO: create fx function, these are just placeholders
execute at @s \
    anchored eyes \
    run \
    particle minecraft:dust_color_transition{ \
        from_color:[0.5, 0.0, 0.5], \
        to_color:[1, 1, 1], \
        scale:0.8, \
    } ~ ~1 ~ 0.3 0.5 0.3 2 30 force
execute at @s \
    run \
    playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2 0
