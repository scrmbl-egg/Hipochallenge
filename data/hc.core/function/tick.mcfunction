#>hc.core:tick
#
# Datapack function that executes each tick (20 times per second).

# handle players that just logged back
execute as @a[scores={hc.HasLeft=1..}] \
    at @s \
    run \
    function hc.core:util/on_login
execute as @a[scores={hc.HasLeft=1..}] \
    run \
    scoreboard players set @s hc.HasLeft 0

# remove recipes
recipe take @a *

# mute vanilla music
function hc.core:music/mute_vanilla

# tick custom data components
function hc.core:custom_data/tick

# damage
#execute as @a[predicate=hc:entity/was_just_damaged] \
    at @s \
    run \
    function hc.core:damage/tick

# deaths
execute as @a[scores={hc.IsDead=1..}] \
    at @s \
    run \
    function hc.core:death/tick

# triggers
execute as @a \
    run \
    function #hc.core:trigger/tick

# abilities
function #hc.core:ability/tick

# projectiles
function hc.core:projectile/tick

# fx
function #hc.core:fx/tick

# levels
function #hc.core:level/tick

# match request (i wish i could put this thing on a fucking predicate)
execute if data storage hc:main vars.game_context.match_requested \
    run \
    function hc.core:game/match/request/tick

# game mode state
execute if predicate hc:game/match/is_being_played \
    run \
    function hc.core:game/mode/tick

## __ KEEP AT BOTTOM OF FILE __
# timers (must be deferred)
function hc.core:score/timer/tick_all
