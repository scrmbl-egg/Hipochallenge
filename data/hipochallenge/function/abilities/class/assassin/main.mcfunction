# kit1
    # parry
    
    # decrease lifetime of parry interactions
    # HACK: In \timers\main.mcfunction, the selectors are players, here is an 
    # exception with an interaction box entity
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction,scores={life_timer=1..}] run scoreboard players remove @s life_timer 1
    
    # check if attacker is an enemy and execute the proper commands
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction] run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/check_attacker
    
    # move the interaction with the player
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction] run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/move
    
    # kill parry interactions when life_timer is 0
    #execute as @e[type=interaction,tag=assassin_k1_parry_interaction,scores={life_timer=0}] run function hipochallenge:std/entity/kill_self_and_passengers
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction,scores={life_timer=0}] run function std:entity/kill_self_and_passengers
