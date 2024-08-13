# params:
    # txt

$function hipochallenge:msg/debug/inject_text/msg_inject_info {txt:'{"color":"gold","italic":true,"selector":"@s"},{"color":"gold","italic":true,"text":" has received a message: ",},$(txt)'}

$tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":[{"translate":"hc.msg.private","fallback":"Private message"}]}},{"bold":true,"color":"blue","text":">> "},$(txt)]