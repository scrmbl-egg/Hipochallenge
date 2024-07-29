scoreboard objectives add local dummy

$execute if entity @a[limit=1,scores={id=$(local_id),class=4,kit=2}] run tag @s add void_arrow

tag @s add ability_confirmed
data remove storage minecraft:hipochallenge local_id
scoreboard objectives remove local