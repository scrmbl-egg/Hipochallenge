# remove recipes
recipe take @a *

# timers
    function hipochallenge:timers/main

# game state logic

    function hipochallenge:game_states/state_logic

# deaths

    execute as @a[scores={is_dead=1..}] at @s run function hipochallenge:death/handle_death

# music

    function hipochallenge:music/mute_vanilla_music

# vfx
    function hipochallenge:vfx/main


    # TODO: Move map functions to a maps/main function
    # map vfx
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_particles
    
# abilities
    execute as @a run function hipochallenge:abilities/main

# menu
    execute as @a run function hipochallenge:menus/logic/menu_main