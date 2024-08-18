# params
    # i
    # size
    # command

scoreboard objectives add local dummy

$data modify storage minecraft:hipochallenge local_command set value "$(command)"

$scoreboard players set $local_i local $(i)
$scoreboard players set $local_size local $(size)

# execute recursive function
execute as @s run function hipochallenge:std/for/iterate_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local
data remove storage hipochallenge local_command