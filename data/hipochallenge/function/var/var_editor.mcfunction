function hipochallenge:msg/debug/msg_info {msg:"Reiniciando variables..."}

#añadir local
scoreboard objectives add local dummy

#Pickups - Ejemplo
scoreboard players set $pickup_count var 3

scoreboard players operation $pickup_dice var = $pickup_count var
scoreboard players add $pickup_dice var 1
scoreboard players operation $pickup_dice_iteration var = $pickup_count var

execute store result storage minecraft:hipochallenge pickup_dice int 1 run scoreboard players get $pickup_dice var

#Equipo (tamaño)
scoreboard players set $max_team_size var 3

execute store result storage minecraft:hipochallenge max_team_size int 1 run scoreboard players get $max_team_size var

#Equipo (color)
#scoreboard players set $team1_color var -1
#scoreboard players set $team2_color var -1

#Equipo (Nombres)
#data modify storage minecraft:hipochallenge team1_name set value "Equipo 1"
#data modify storage minecraft:hipochallenge team2_name set value "Equipo 2"

#Ronda (timer)
scoreboard players set $round_timer_max_sec var 120

scoreboard players operation $round_timer_max_ticks var = $round_timer_max_sec var
scoreboard players set $seconds_to_ticks local 20
scoreboard players operation $round_timer_max_ticks var *= $seconds_to_ticks local

#borrar local
scoreboard objectives remove local

#habilidades
    #void_arrow

        #rango (en decímetros ---> metros deseados x 10)
            scoreboard players set $void_arrow_range var 65
            execute store result storage minecraft:hipochallenge void_arrow_range int 0.1 run scoreboard players get $void_arrow_range var

        #duración (en decisegundos ---> segundos deseados x 10)
            scoreboard players set $void_arrow_duration var 15
            execute store result storage minecraft:hipochallenge void_arrow_duration int 2 run scoreboard players get $void_arrow_duration var
    #pistola
        #cooldown de la pistola en ticks
            scoreboard players set $cd_pistol var 10
            execute store result storage minecraft:hipochallenge cd_pistol int 1 run scoreboard players get $cd_pistol var

        #rango de la pistola en cuartos de bloque
            scoreboard players set $bullet_lifetime var 40
            execute store result storage minecraft:hipochallenge bullet_lifetime int 1 run scoreboard players get $bullet_lifetime var
#perks
    #sabueso
    #duración (en decisegundos ---> segundos deseados x 10)
    scoreboard players set $hound_duration var 40
    execute store result storage minecraft:hipochallenge hound_duration int 2 run scoreboard players get $hound_duration var