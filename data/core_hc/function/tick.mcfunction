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

# mute vanilla music
function core_hc:music/mute_vanilla

# tick custom data components
function core_hc:custom_data/tick

# tick round status bossbar
execute if function core_hc:round_status/does_exist \
    run \
    function core_hc:round_status/tick

# damage
#execute as @a[predicate=hc:entity/was_just_damaged] \
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

# abilities
function #core_hc:ability/tick

# projectiles
function core_hc:projectile/tick

# fx
function #core_hc:fx/tick

# levels
function #core_hc:level/tick

# game mode state
execute if predicate hc:mode/is_match_being_played \
    run \
    function core_hc:mode/tick

## __ KEEP AT BOTTOM OF FILE __
# timers (must be deferred)
function core_hc:score/timer/tick_all
