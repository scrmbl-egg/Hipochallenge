# flare arrows main logic
execute as @e[type=spectral_arrow,nbt={weapon:{components:{"minecraft:custom_data":{item_id:recon_k2_flare_arrow_crossbow}}}}] run function hipochallenge:projectiles/flare_arrows/main

# clean all arrows (place at the bottom of the file)
execute as @e[type=#arrows,nbt={shake:1b}] at @s run function hipochallenge:projectiles/arrows/clean