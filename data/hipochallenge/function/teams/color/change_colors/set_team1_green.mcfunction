$tellraw @a [{"bold":true,"color":"white","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje global"}]},"text":">> "},{"bold":false,"color":"white","italic":false,"obfuscated":false,"strikethrough":false,"text":"El equipo ","underlined":false},{"bold":false,"color":"green","italic":false,"obfuscated":false,"strikethrough":false,"text":"$(team1_name) ","underlined":false},{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"ha cambiado su color a ","underlined":false},{"bold":true,"color":"green","text":"VERDE"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set $team1_color var 3
team modify team1 color green

data modify storage minecraft:hipochallenge team1_color set value "green"
data modify storage minecraft:hipochallenge team1_trim set value "emerald"
data modify storage minecraft:hipochallenge team1_dust_color set value "[0.000,1.000,0.000]"
data modify storage minecraft:hipochallenge team1_armor_color set value 8439583
data modify storage minecraft:hipochallenge team1_color_number set value 3
