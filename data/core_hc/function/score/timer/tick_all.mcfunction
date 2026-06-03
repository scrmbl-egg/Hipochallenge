#>core_hc:score/timer/tick_all
#
# Decreases 1 unit from all scores that are meant to represent timers.

## TEMPORARY ENTITY LIFETIMES
execute as @e[type=!minecraft:player,scores={hc.LifeTimer=0..}] \
    run \
    scoreboard players remove @s hc.LifeTimer 1

## MECHANICS
execute as @a[scores={hc.InCombatTimer=0..}] \
    run \
    scoreboard players remove @s hc.InCombatTimer 1
execute as @a[scores={hc.SilenceTimer=0..}] \
    run \
    scoreboard players remove @s hc.SilenceTimer 1
execute as @a[scores={hc.InCombatTimer=0..}] \
    run \
    scoreboard players remove @s hc.InCombatTimer 1
execute as @a[scores={hc.SuppressionTimer=0..}] \
    run \
    scoreboard players remove @s hc.SuppressionTimer 1

# tick class timers
function #core_hc:score/tick_class_timers

# tick extension timers
function #extension_hc:score/tick_timers
