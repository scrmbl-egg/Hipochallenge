# params: team, msg

$tellraw @a[team=$(team)] [{"text":"","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje de equipo"}]}},{"bold":true,"color":"yellow","text":">> "},{"text":"$(msg)"}]

$function hipochallenge:msg/debug/msg_info {msg:"Team message sent to $(team): '$(msg)'"}