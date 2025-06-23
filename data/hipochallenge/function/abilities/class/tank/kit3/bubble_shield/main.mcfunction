# kit 3 bubble main function

# TODO: optimize code, directories, and unnecessary functions

# draw sphere
execute as @e[type=marker,tag=bubble_shield] at @s run function hipochallenge:vfx/sphere/generate with storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield

# tag self
tag @s add current_bubble_shield

# lifetime logic
scoreboard players remove @s life_timer 1
execute if score @s life_timer matches ..1 as @s at @s run return run function hipochallenge:abilities/class/tank/kit3/bubble_shield/kill with storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield

# save important data into storage
data modify storage minecraft:hipochallenge local_bubble_shield.kill_radius set from storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.radius
data modify storage minecraft:hipochallenge local_bubble_shield.tag_radius set from storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.high_speed_arrow_detection_radius
data modify storage minecraft:hipochallenge local_bubble_shield.lifetime_ticks_refreshed set from storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.lifetime_ticks_added_on_impact
function std:strings/uuid/get {dest_st:"minecraft:hipochallenge",dest_path:"local_bubble_shield.uuid_str"}

# destroy projectiles from outside the shield
execute as @s at @s run function hipochallenge:abilities/class/tank/kit3/bubble_shield/destroy_projectiles with storage minecraft:hipochallenge local_bubble_shield

# ensure lifetime does not exceed the default value
scoreboard objectives add local_bubble_shield dummy
execute store result score $max_lifetime local_bubble_shield run data get storage minecraft:hipochallenge consts.classes.tank.kit3.bubble_shield.lifetime_ticks
execute if score $max_lifetime local_bubble_shield < @s life_timer run scoreboard players operation @s life_timer = $max_lifetime local_bubble_shield

# clear tags and leftover data
tag @s remove current_bubble_shield
data remove storage minecraft:hipochallenge local_bubble_shield
scoreboard objectives remove local_bubble_shield
