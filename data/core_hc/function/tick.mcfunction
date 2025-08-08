#>core_hc:tick
#
# Datapack function that executes each tick (20 times per second).

# remove recipes
recipe take @a *

# mute vanilla music
function core_hc:music/mute_vanilla

# game state logic
# TODO: uncomment this command when game states are done
#function hipochallenge:game_states/state_logic

# deaths
# TODO: Move this function to a separate folder (death/tick)
execute as @a[scores={is_dead=1..}] at @s \
    run \
    function hipochallenge:death/handle_death

# vfx
function hipochallenge:vfx/tick

    # TODO: Move level functions to a level/tick function
    # map vfx
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_particles

# projectiles
# TODO: move to core_hc
function hipochallenge:projectiles/tick

# abilities
function #core_hc:ability/tick

## __ KEEP AT BOTTOM OF FILE __
# timers (must be deferred)
function core_hc:score/timer/tick_all
