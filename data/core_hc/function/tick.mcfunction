#>core_hc:tick
#
# Datapack function that executes each tick (20 times per second).

# handle players that just logged back
execute as @a[scores={hc.HasLeft=1..}] \
    at @s \
    run \
    function core_hc:fx/util/login
execute as @a[scores={hc.HasLeft=1..}] \
    run \
    scoreboard players set @s hc.HasLeft 0

# remove recipes
recipe take @a *

# clear items with the "hc:item/clear_instantly" custom data
clear @a *[minecraft:custom_data={"hc:item/clear_instantly":{}}]

# set pickup delay for items with the "hc:item/no_pickup" component
execute as @e[ \
    type=minecraft:item, \
    nbt={ \
        Item:{components:{"minecraft:custom_data":{"hc:item/no_pickup":{}}}}, \
    }, \
    nbt=!{PickupDelay:32767s} \
] \
    run \
    data merge entity @s {PickupDelay:32767s}

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
