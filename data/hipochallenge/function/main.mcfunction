# remove recipes
recipe take @a *

# game state logic

    function hipochallenge:game_states/state_logic

# deaths
    # TODO: Move this function to a separate folder
    execute as @a[scores={is_dead=1..}] at @s run function hipochallenge:death/handle_death

# vfx
    function hipochallenge:vfx/main


    # TODO: Move map functions to a maps/main function
    # map vfx
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_particles
    
# abilities
    function hipochallenge:abilities/main

# menu
    execute as @a run function hipochallenge:menus/logic/menu_main

# projectile cleanup
    function hipochallenge:projectiles/main

## __ KEEP AT BOTTOM OF FILE __
# timers
    function hipochallenge:timers/main