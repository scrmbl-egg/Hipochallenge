# params:
    # give_suppression
    # current_effect (map macro)

# give effect (little parameter hack here)
$function hipochallenge:effects/give_effect $(current_effect)

# determine if suppression should be given
scoreboard objectives add local_suppr_score dummy
$scoreboard players set $give_suppression local_suppr_score $(give_suppression)

# add seconds of suppression if $give_suppression is 1b/true
$execute if score $give_suppression local_suppr_score matches 1.. run data modify storage minecraft:hipochallenge local_current_effect set value $(current_effect)
execute if score $give_suppression local_suppr_score matches 1.. run function hipochallenge:mechanic/suppression/add_secs with storage minecraft:hipochallenge local_current_effect

# free memory
scoreboard objectives remove local_suppr_score
data remove storage minecraft:hipochallenge local_current_effect
