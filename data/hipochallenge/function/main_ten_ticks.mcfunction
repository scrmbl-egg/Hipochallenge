schedule function hipochallenge:main_ten_ticks 10t

#perks
execute as @a if predicate hipochallenge:dice/90 run function hipochallenge:perk/class/recon/hound/hound_node_spawn with storage minecraft:hipochallenge

#vfx
    #habilidades
        #void_arrow
        execute as @e[tag=void_arrow,type=marker] at @s run function hipochallenge:vfx/abilities/void_arrow/void_arrow_vfx_circle_frame with storage minecraft:hipochallenge

        #rango de pistola
        execute as @a[scores={cd1=0},nbt={SelectedItem:{id:"minecraft:black_dye",count:1,components:{"minecraft:max_damage":6}}}] at @s run function hipochallenge:abilities/pistol/show_pistol_range with storage minecraft:hipochallenge
    
    #mapas
        #mapa de recamaras
            #goteras
                execute at @e[tag=drops,type=marker,sort=random,limit=5] run particle minecraft:dripping_dripstone_water ~ ~0.9 ~ 0.5 0 0.5 1 2 force