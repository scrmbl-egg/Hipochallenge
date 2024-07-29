execute if entity @s[tag=team1] run summon marker ~ ~ ~ {Tags:["void_arrow","team1"]}
execute if entity @s[tag=team2] run summon marker ~ ~ ~ {Tags:["void_arrow","team2"]}
execute if entity @s[tag=admin] run summon marker ~ ~ ~ {Tags:["void_arrow","admin"]}
execute if entity @s[tag=spectator] run summon marker ~ ~ ~ {Tags:["void_arrow","spectator"]}
execute if entity @s[tag=neutral] run summon marker ~ ~ ~ {Tags:["void_arrow","neutral"]}

function hipochallenge:msg/debug/msg_info {msg:"Creada habilidad de flecha del vacio"}