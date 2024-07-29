$tellraw @a [{"bold":true,"color":"white","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje global"}]},"text":">> "},{"bold":true,"color":"red","text":"[ERROR] "},{"bold":false,"color":"red","italic":false,"obfuscated":false,"strikethrough":false,"text":"$(msg)","underlined":false}]
execute as @a at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0
