# params:
    # duration_seconds

# ensure scoreboard has previous value
scoreboard players add @s suppression_timer 0

# create local score
scoreboard objectives add local_suppr_score dummy

scoreboard players set $secs_to_ticks local_suppr_score 20

# store scaled constant in local score
$scoreboard players set $calculated_suppr local_suppr_score $(duration_seconds)
scoreboard players operation $calculated_suppr local_suppr_score *= $secs_to_ticks local_suppr_score

# if the current suppression timer is less than the scaled constant, set it to
# the constant,
# otherwise, do nothing
execute if score $calculated_suppr local_suppr_score > @s suppression_timer run scoreboard players operation @s suppression_timer = $calculated_suppr local_suppr_score

# free memory
scoreboard objectives remove local_suppr_score