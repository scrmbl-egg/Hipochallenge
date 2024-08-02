# create local score
scoreboard objectives add local dummy

# construct death message

scoreboard players operation $last_death local = @s id
execute store result storage minecraft:hipochallenge last_death int 1 run scoreboard players get $last_death local
execute if entity @p[scores={has_killed=1..}] run scoreboard players operation $last_killer local = @p[scores={has_killed=1..}] id
execute if entity @p[scores={has_killed=1..}] store result storage minecraft:hipochallenge last_killer int 1 run scoreboard players get $last_killer local

function hipochallenge:death/show_player_death

# reset scores and free memory
scoreboard players set @s is_dead 0
scoreboard players set @p[scores={has_killed=1..}] has_killed 0

scoreboard objectives remove local

data remove storage minecraft:hipochallenge last_killer
data remove storage minecraft:hipochallenge last_death