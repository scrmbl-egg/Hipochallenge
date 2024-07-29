execute as @s run function hipochallenge:msg/clear_chat_for_self

tellraw @s [{"bold":false,"color":"blue","text":"\nO ------------< "},{"bold":true,"color":"aqua","text":"MENU"},{"bold":false,"color":"blue","text":" >------------ O"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"clickEvent":{"action":"run_command","value":"/trigger menu set 2"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Menu de teletransportación"}]},"text":" Teletransportes"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"clickEvent":{"action":"run_command","value":"/trigger menu set 3"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Ver las estadisticas de la partida"}]},"text":" Estadisticas"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"clickEvent":{"action":"run_command","value":"/trigger menu set 4"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Editar tus opciones"}]},"text":" Opciones"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":true,"color":"blue","text":"|   "},{"bold":false,"color":"gold","text":"▶"},{"bold":false,"clickEvent":{"action":"run_command","value":"/trigger menu set 5"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Consultar tu prestigio"}]},"text":" Prestigio"}]

tellraw @s {"bold":true,"color":"blue","text":"|   "}

tellraw @s [{"bold":false,"color":"blue","text":"O ------------< "},{"bold":true,"color":"aqua","text":"  ⭐  "},{"bold":false,"color":"blue","text":" >------------ O"}]