execute store result storage minecraft:hipochallenge local_id int 1 run scoreboard players get @s id

# TODO: Do pistol ability code somewhere else

#execute if entity @s[scores={cd1=0},nbt={SelectedItem:{id:"minecraft:black_dye",count:1,components:{"minecraft:max_damage":6}}}] run function hipochallenge:abilities/pistol/use_pistol with storage minecraft:hipochallenge

tag @s remove ate_item
data remove storage minecraft:hipochallenge local_id