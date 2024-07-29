execute as @s run function hipochallenge:msg/clear_chat_for_self

tellraw @s [{"bold":false,"color":"blue","text":"\nO ------------< "},{"bold":true,"color":"aqua","text":"OPCIONES"},{"bold":false,"color":"blue","text":" >------------ O"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s[tag=!hide_blood] [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Activar/desactivar sangre"}]},"text":" Sangre"},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger menu set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Activar"}]},"text":" [✔]","color":"green"},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger menu set -2"},"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Desactivar"}]},"text":" [❌]"}]

tellraw @s[tag=hide_blood] [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Activar/desactivar sangre"}]},"text":" Sangre"},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger menu set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Activar"}]},"text":" [✔]","color":"green"},{"bold":true,"clickEvent":{"action":"run_command","value":"/trigger menu set -2"},"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Desactivar"}]},"text":" [❌]"}]


tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":false,"color":"blue","text":"O ------------< "},{"bold":true,"color":"aqua","text":"OPCIONES"},{"bold":false,"color":"blue","text":" >------------ O"}]
