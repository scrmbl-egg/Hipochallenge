# params:
    # duration_const_seconds

# create local score
scoreboard objectives add local_suppr_score dummy

# store scaled constant in local score
$execute store result score $calculated_suppr local_suppr_score run data get storage minecraft:hipochallenge $(duration_const_seconds) 20

# if the current suppression timer is less than the scaled constant, set it to the constant,
# otherwise, do nothing
execute if score $calculated_suppr local_suppr_score > @s suppression_timer run scoreboard players operation @s suppression_timer = $calculated_suppr local_suppr_score

# free memory
scoreboard objectives remove local_suppr_score