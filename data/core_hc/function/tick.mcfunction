#>core_hc:tick
#
# Datapack function that executes each tick (20 times per second).

# remove recipes
recipe take @a *

# mute vanilla music
function core_hc:music/mute_vanilla

# game state handling
# TODO: when classes are done, implement game state updates and logic

# deaths
execute as @a[scores={hc.IsDead=1..}] \
    at @s \
    run \
    function core_hc:death/tick

# fx
function #core_hc:fx/tick

# projectiles
function core_hc:projectile/tick

# abilities
function #core_hc:ability/tick

## __ KEEP AT BOTTOM OF FILE __
# timers (must be deferred)
function core_hc:score/timer/tick_all
