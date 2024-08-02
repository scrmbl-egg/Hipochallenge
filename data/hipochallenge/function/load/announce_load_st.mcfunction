# storage: version

$tellraw @a [{"bold":true,"color":"white","text":"HIPOCHALLENGE: "},{"bold":false,"color":"red","italic":false,"obfuscated":false,"strikethrough":false,"text":"Phoenix ","underlined":false},{"color":"gray","text":"- "},{"bold":false,"color":"aqua","text":"¡Recargado! - v$(version)"}]
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 0 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.5 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.2 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
execute as @a[tag=dario_update] at @s run playsound minecraft:dario_update master @s ~ ~ ~ 1 1 1 
scoreboard players add #version value 1