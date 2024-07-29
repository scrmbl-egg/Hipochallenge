#añadir local
scoreboard objectives add local dummy

#calcular
execute as @a[team=team1] run scoreboard players add #team1size local 1
execute as @a[team=team2] run scoreboard players add #team2size local 1

scoreboard players set #team_validator local 0
execute unless score #team1size local = $max_team_size var run scoreboard players add #team_validator local 1
execute unless score #team2size local = $max_team_size var run scoreboard players add #team_validator local 1

#procesar resultados
execute if score #team_validator local matches 1.. run data modify storage minecraft:hipochallenge return set value false
execute if score #team_validator local matches 0 run data modify storage minecraft:hipochallenge return set value true

#borrar local
scoreboard objectives remove local

#return
return run data get storage minecraft:hipochallenge return