#storage last_killer, last_death

$tellraw @a [{"bold":true,"color":"dark_red","text":">> "},{"bold":false,"selector":"@p[scores={id=$(last_killer)}]"},{"bold":false,"color":"white","text":" 🗡🗡🗡 "},{"bold":false,"selector":"@p[scores={id=$(last_death)}]"}]