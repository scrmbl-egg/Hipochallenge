# params
    # i
    # size
    # command

scoreboard objectives add local_000 dummy

$data modify storage minecraft:hipochallenge local_command set value "$(command)"

$scoreboard players set $local_i local_000 $(i)
$scoreboard players set $local_size local_000 $(size)

# execute recursive function
execute as @s run function hipochallenge:std/for/unsafe/iterate_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local_000
data remove storage minecraft:hipochallenge local_command