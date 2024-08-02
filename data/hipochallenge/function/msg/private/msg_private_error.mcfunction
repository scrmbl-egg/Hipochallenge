# params:
    # msg

$tellraw @s [{"bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Mensaje privado"}]},"text":">> "},{"bold":true,"color":"red","text":"[ERROR] "},{"bold":false,"color":"red","italic":false,"obfuscated":false,"strikethrough":false,"text":"$(msg)","underlined":false}]

$function hipochallenge:msg/debug/inject_text/msg_inject_warn {txt:"{\"bold\":false,\"color\":\"gold\",\"italic\":true,\"obfuscated\":false,\"selector\":\"@s\",\"strikethrough\":false,\"underlined\":false},{\"bold\":false,\"color\":\"gold\",\"italic\":true,\"obfuscated\":false,\"strikethrough\":false,\"text\":\" ha recibido un error: \",\"underlined\":false},{\"bold\":false,\"color\":\"red\",\"italic\":true,\"obfuscated\":false,\"strikethrough\":false,\"text\":\"$(msg)\",\"underlined\":false}"}

execute as @s at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0