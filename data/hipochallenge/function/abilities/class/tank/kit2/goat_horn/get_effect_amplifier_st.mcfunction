# storage:
    # local_nearby_enemy_count
# generates:
    # local_effect_amplifier

# new score
scoreboard objectives add local_get_amplifier_score dummy

# get enemy count and 1 (literal)
$scoreboard players set $enemy_count local_get_amplifier_score $(local_nearby_enemy_count)
scoreboard players set $one local_get_amplifier_score 1

# subtract one to the enemy count to get the amplifier
scoreboard players operation $enemy_count local_get_amplifier_score -= $one local_get_amplifier_score

# generate the data path
execute store result storage minecraft:hipochallenge local_effect_amplifier int 1 run scoreboard players get $enemy_count local_get_amplifier_score

# free memory
scoreboard objectives remove local_get_amplifier_score