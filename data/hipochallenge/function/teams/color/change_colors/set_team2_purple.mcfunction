$tellraw @a [{"bold":true,"color":"white","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje global"}]},"text":">> "},{"bold":false,"color":"white","italic":false,"obfuscated":false,"strikethrough":false,"text":"El equipo ","underlined":false},{"bold":false,"color":"green","italic":false,"obfuscated":false,"strikethrough":false,"text":"$(team2_name) ","underlined":false},{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"ha cambiado su color a ","underlined":false},{"bold":true,"color":"light_purple","text":"MORADO"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set $team2_color var 5
team modify team2 color light_purple

data modify storage minecraft:hipochallenge team2_color set value "purple"
data modify storage minecraft:hipochallenge team2_trim set value "amethyst"
data modify storage minecraft:hipochallenge team2_dust_color set value "[1.000,0.000,1.000]"
data modify storage minecraft:hipochallenge team2_armor_color set value 13061821
data modify storage minecraft:hipochallenge team2_color_number set value 5