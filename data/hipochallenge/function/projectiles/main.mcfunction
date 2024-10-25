# tag arrows as projectiles
tag @e[type=#arrows,tag=!projectiles] add projectiles

# marksman kit 2 arrows remove gravity
execute as @e[type=arrow,nbt={weapon:{components:{"minecraft:custom_data":{item_id:marksman_k2_crossbow}}}},tag=!no_gravity_arrow] run function hipochallenge:projectiles/no_gravity_arrows/remove_gravity

# limit lifetime of arrows tagged with 'no_gravity_arrow'
execute as @e[type=arrow,tag=no_gravity_arrow] run scoreboard players remove @s timer 1

# flare arrows main logic
execute as @e[type=spectral_arrow,nbt={weapon:{components:{"minecraft:custom_data":{item_id:recon_k2_flare_arrow_crossbow}}}}] run function hipochallenge:projectiles/flare_arrows/main

# clean all arrows (place at the bottom of the file)
execute as @e[type=#arrows,nbt={shake:1b}] at @s run function hipochallenge:projectiles/arrows/clean