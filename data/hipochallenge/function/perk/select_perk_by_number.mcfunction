# params: perk

$scoreboard players set @s perk $(perk)
$function hipochallenge:msg/debug/inject_text/msg_inject_info {txt:'{"bold":false,"color":"gray","italic":true,"obfuscated":false,"selector":"@s","strikethrough":false,"underlined":false},{"bold":false,"color":"gray","italic":true,"obfuscated":false,"strikethrough":false,"text":" has selected perk number $(perk)","underlined":false}'}