# kit1
    # parry
    
    # decrease lifetime of parry interactions
    # HACK: In \timers\main.mcfunction, the selectors are players, here is an exception with an interaction box entity
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction,scores={timer=1..}] run scoreboard players remove @s timer 1
    
    # execute attack function
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction] run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/check_attacker
    
    # kill parry interactions when lifetime is 0
    execute as @e[type=interaction,tag=assassin_k1_parry_interaction,scores={timer=0}] run function hipochallenge:std/entity/kill_self_and_passengers