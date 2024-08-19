# storage:
    # local_nearby_enemy_count
# generates:
    # local_effect_amplifier

scoreboard objectives add local dummy

$scoreboard players set $enemy_count local $(local_nearby_enemy_count)
scoreboard players set $one local 1

scoreboard players operation $enemy_count local -= $one local

execute store result storage minecraft:hipochallenge local_effect_amplifier int 1 run scoreboard players get $enemy_count local

scoreboard objectives remove local