# params: team, txt

$tellraw @a[team=$(team)] [{"text":"","hoverEvent":{"action":"show_text","value":[{"translate":"hc.msg.team","fallback":"Team message"}]}},{"bold":true,"color":"yellow","text":">> "},$(txt)]

$function hipochallenge:msg/debug/inject_text/msg_inject_info {txt:'{"color":"gray","italic":true,"text":"Team message sent to $(team): "},$(txt)'}