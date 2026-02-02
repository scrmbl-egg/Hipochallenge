#>core_hc:tick
#
# Datapack function that executes each tick (20 times per second).

# handle players that just logged back
execute as @a[scores={hc.HasLeft=1..}] \
    at @s \
    run \
    function core_hc:util/on_login
execute as @a[scores={hc.HasLeft=1..}] \
    run \
    scoreboard players set @s hc.HasLeft 0

# remove recipes
recipe take @a *

# clear items with the "hc:item/clear_instantly" custom data
clear @a *[minecraft:custom_data~{"hc:item/clear_instantly":{}}]

# set pickup delay for items with the "hc:item/no_pickup" component
execute as @e[ \
    type=minecraft:item, \
    nbt={ \
        Item:{ \
            components:{ \
                "minecraft:custom_data":{"hc:entity/item/no_pickup":{}}, \
            }, \
        }, \
    }, \
    nbt=!{PickupDelay:32767s} \
] \
    run \
    data merge entity @s {PickupDelay:32767s}

# mute vanilla music
function core_hc:music/mute_vanilla

## CORE GAME LOOP REGION

# game state handling
# TODO: when classes are done, implement game state updates and logic

# round_status
execute if function core_hc:round_status/does_exist \
    run \
    function core_hc:round_status/tick

# damage
#execute as @a[predicate=hc:was_just_damaged] \
    at @s \
    run \
    function core_hc:damage/tick

# deaths
execute as @a[scores={hc.IsDead=1..}] \
    at @s \
    run \
    function core_hc:death/tick

# triggers
execute as @a \
    run \
    function #core_hc:trigger/tick

# fx
function #core_hc:fx/tick

# projectiles
function core_hc:projectile/tick

# abilities
function #core_hc:ability/tick

# levels
function #core_hc:level/tick

## __ KEEP AT BOTTOM OF FILE __
# timers (must be deferred)
function core_hc:score/timer/tick_all
