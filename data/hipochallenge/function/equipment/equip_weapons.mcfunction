execute store result storage minecraft:hipochallenge local_kit_number int 1 run scoreboard players get @s kit

execute as @s run function hipochallenge:equipment/weapons/select_weapons with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_kit_number