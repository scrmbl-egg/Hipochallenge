# params:
    # txt

$function hipochallenge:msg/debug/inject_text/msg_inject_warn {txt:'{"color":"gold","italic":true,"selector":"@s"},{"color":"gold","italic":true,"text":" has received an error message: ",},$(txt)'}

$tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":[{"translate":"hc.msg.private","fallback":"Private message"}]}},{"bold":true,"color":"blue","text":">> "},{"bold":true,"color":"red","text":"[ERROR] "},$(txt)]

execute as @s at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0