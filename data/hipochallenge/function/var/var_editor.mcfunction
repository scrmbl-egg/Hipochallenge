function hipochallenge:msg/debug/msg_info {msg:"Reiniciando variables..."}

# add local score
scoreboard objectives add local dummy

# pickups - example
scoreboard players set $pickup_count var 3

scoreboard players operation $pickup_dice var = $pickup_count var
scoreboard players add $pickup_dice var 1
scoreboard players operation $pickup_dice_iteration var = $pickup_count var

execute store result storage minecraft:hipochallenge pickup_dice int 1 run scoreboard players get $pickup_dice var

# teams (size)
scoreboard players set $max_team_size var 3

execute store result storage minecraft:hipochallenge max_team_size int 1 run scoreboard players get $max_team_size var

# team (color)
#scoreboard players set $team1_color var -1
#scoreboard players set $team2_color var -1

# team (names)
#data modify storage minecraft:hipochallenge team1_name set value "Equipo 1"
#data modify storage minecraft:hipochallenge team2_name set value "Equipo 2"

# round (timer)
scoreboard players set $round_timer_max_sec var 120

scoreboard players operation $round_timer_max_ticks var = $round_timer_max_sec var
scoreboard players set $seconds_to_ticks local 20
scoreboard players operation $round_timer_max_ticks var *= $seconds_to_ticks local

# remove local
scoreboard objectives remove local

# abilities
    # void_arrow

        #rango (en decímetros ---> metros deseados x 10)
            #scoreboard players set $void_arrow_range var 65
            #execute store result storage minecraft:hipochallenge void_arrow_range int 0.1 run scoreboard players get $void_arrow_range var

        #duración (en decisegundos ---> segundos deseados x 10)
            #scoreboard players set $void_arrow_duration var 15
            #execute store result storage minecraft:hipochallenge void_arrow_duration int 2 run scoreboard players get $void_arrow_duration var
    # pistol
        #cooldown de la pistola en ticks
            #scoreboard players set $cd_pistol var 10
            #execute store result storage minecraft:hipochallenge cd_pistol int 1 run scoreboard players get $cd_pistol var

        #rango de la pistola en cuartos de bloque
            #scoreboard players set $bullet_lifetime var 40
            #execute store result storage minecraft:hipochallenge bullet_lifetime int 1 run scoreboard players get $bullet_lifetime var
# perks