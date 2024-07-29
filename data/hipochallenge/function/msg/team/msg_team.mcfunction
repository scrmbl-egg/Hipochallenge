#params team, msg

$tellraw @a[team=$(team)] [{"bold":true,"color":"yellow","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje de equipo"}]},"text":">> "},{"bold":false,"color":"white","italic":false,"obfuscated":false,"strikethrough":false,"text":"$(msg)","underlined":false}]

$function hipochallenge:msg/debug/msg_info {msg:"Mensaje de equipo a $(team): '$(msg)'"}