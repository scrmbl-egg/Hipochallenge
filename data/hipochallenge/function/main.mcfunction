# remove recipes
recipe take @a *

# timers
    function hipochallenge:timers/timers_main

# game state logic

    function hipochallenge:game_states/state_logic

# deaths

    execute as @a[scores={is_dead=1..}] at @s run function hipochallenge:death/handle_death

# music

    function hipochallenge:music/mute_vanilla_music

# vfx

    # vfx de equiparse
    execute as @e[tag=equip_spin_particle,type=marker] run function hipochallenge:vfx/equip_spin_particle

    # map vfx
        # map0
            # pipes
                function hipochallenge:vfx/maps/map0/pipe_particles
    
# kill and process arrows
    execute as @e[type=arrow,nbt={shake:1b}] at @s run function hipochallenge:unique/arrow_deleter
    execute as @e[type=arrow,tag=!processed] run function hipochallenge:unique/set_team_tag_from_id_origin
    
# abilities
    execute as @a run function hipochallenge:abilities/main

# menu
    execute as @a run function hipochallenge:menus/logic/menu_main