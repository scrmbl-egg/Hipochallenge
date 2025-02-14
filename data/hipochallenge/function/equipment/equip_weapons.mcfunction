execute store result storage minecraft:hipochallenge local_equip_kit_params.kit_number int 1 run scoreboard players get @s kit

# in:
    # kit_number
execute as @s run function hipochallenge:equipment/weapons/equip_kit with storage minecraft:hipochallenge local_equip_kit_params

data remove storage minecraft:hipochallenge local_equip_kit_params
