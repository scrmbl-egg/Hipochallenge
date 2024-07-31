#calcular
data modify storage minecraft:hipochallenge return set value true
execute if score $team1_color var = $team2_color var run data modify storage minecraft:hipochallenge return set value false

execute if score $team1_color var matches -1 run data modify storage minecraft:hipochallenge return set value false
execute if score $team2_color var matches -1 run data modify storage minecraft:hipochallenge return set value false

#return
return run data get storage minecraft:hipochallenge return