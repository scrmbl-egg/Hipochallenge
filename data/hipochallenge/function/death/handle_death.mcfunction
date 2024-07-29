#crear local
scoreboard objectives add local dummy

#mensaje
scoreboard players operation $last_death local = @s id
execute store result storage minecraft:hipochallenge last_death int 1 run scoreboard players get $last_death local
execute if entity @p[scores={has_killed=1..}] run scoreboard players operation $last_killer local = @p[scores={has_killed=1..}] id
execute if entity @p[scores={has_killed=1..}] store result storage minecraft:hipochallenge last_killer int 1 run scoreboard players get $last_killer local

function hipochallenge:death/show_player_death with storage minecraft:hipochallenge


#reset de scores
scoreboard players set @s is_dead 0
scoreboard players set @p[scores={has_killed=1..}] has_killed 0

data remove storage minecraft:hipochallenge last_killer
data remove storage minecraft:hipochallenge last_death

#borrar local
scoreboard objectives remove local