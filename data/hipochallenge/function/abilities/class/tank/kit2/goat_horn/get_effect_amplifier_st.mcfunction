# storage:
    # local_nearby_enemy_count
# generates:
    # local_effect_amplifier

scoreboard objectives add local_get_amplifier_score dummy

$scoreboard players set $enemy_count local_get_amplifier_score $(local_nearby_enemy_count)
scoreboard players set $one local_get_amplifier_score 1

scoreboard players operation $enemy_count local_get_amplifier_score -= $one local_get_amplifier_score

execute store result storage minecraft:hipochallenge local_effect_amplifier int 1 run scoreboard players get $enemy_count local_get_amplifier_score

scoreboard objectives remove local_get_amplifier_score