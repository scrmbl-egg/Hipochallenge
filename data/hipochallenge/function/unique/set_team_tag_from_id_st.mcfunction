# storage:
    # local_id

$execute if entity @a[limit=1,scores={id=$(local_id)},team=admin] run tag @s add admin
$execute if entity @a[limit=1,scores={id=$(local_id)},team=neutral] run tag @s add neutral
$execute if entity @a[limit=1,scores={id=$(local_id)},team=team1] run tag @s add team1
$execute if entity @a[limit=1,scores={id=$(local_id)},team=team2] run tag @s add team2
$execute if entity @a[limit=1,scores={id=$(local_id)},team=spectator] run tag @s add spectator