
scoreboard players operation $pickup_dice_iteration var = $pickup_count var
execute if score $pickup_dice_iteration var matches 1.. run function hipochallenge:var/pickup_dice with storage minecraft:hipochallenge

#quitar recetas
recipe take @a *

#muerte

    execute as @a[scores={is_dead=1..}] at @s run function hipochallenge:death/handle_death with storage minecraft:hipochallenge

#music

    function hipochallenge:music/mute_vanilla_music

#vfx

    #vfx de equiparse
    execute as @e[tag=equip_spin_particle,type=marker] run function hipochallenge:vfx/equip_spin_particle

    #vfx de la flecha del vacio
    # TODO: Borrar línea de abajo
    
    #execute as @e[tag=void_arrow,type=marker] at @s run function hipochallenge:abilities/void_arrow/void_arrow with storage minecraft:hipochallenge

    #ganar ronda
    execute if score #local_round_win_timer var matches 0.. run scoreboard players add #local_round_win_timer var 1
    execute if score #local_round_win_timer var matches 0.. as @a[tag=round_won] run function hipochallenge:vfx/titles/round_win_logic
    execute if score #local_round_win_timer var matches 15.. run scoreboard players reset #local_round_win_timer var

    #vfx de mapas
        #mapa 0
            #tuberias
                function hipochallenge:vfx/maps/map0/pipe_particles
    
#romper (y procesar) flechas
    execute as @e[type=arrow,nbt={shake:1b}] at @s run function hipochallenge:unique/arrow_deleter
    execute as @e[type=arrow,tag=!processed] run function hipochallenge:unique/set_team_tag_from_id_origin
    
    #clasificar flechas
    # TODO: Borrar línea de abajo
        #execute as @e[type=arrow,tag=!ability_confirmed] run function hipochallenge:abilities/arrow_type_decider_setup

#Habilidades
    #detectar item comido
        execute as @a[tag=ate_item] run function hipochallenge:abilities/decide_item_eaten

    #cooldowns
        #execute as @a run function hipochallenge:abilities/cooldowns with storage minecraft:hipochallenge

    #void_arrow
        execute as @e[type=arrow,tag=void_arrow] at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_arrow with storage minecraft:hipochallenge

    #pistola
    # TODO: Borrar línea de abajo
        #execute as @a[scores={cd1=0},nbt={SelectedItem:{id:"minecraft:black_dye",count:1,components:{"minecraft:max_damage":6}}}] at @s anchored eyes positioned ^ ^ ^10 run particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:1,to_color:[0.000,0.000,0.000]} ~ ~ ~ 0.1 0.1 0.1 0 3 force @s
        #execute as @e[tag=bullet,type=marker] run function hipochallenge:abilities/pistol/bullet_logic with storage minecraft:hipochallenge
        
#perks

    #sabueso
        execute as @e[tag=hound] run function hipochallenge:perk/class/recon/hound/hound_logic with storage minecraft:hipochallenge

#menu
        execute as @a run function hipochallenge:menus/logic/menu_main