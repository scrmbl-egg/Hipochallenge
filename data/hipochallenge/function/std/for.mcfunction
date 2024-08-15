# params
    # end_exclusive = 3
    # command

# TODO: make a standard for/iterator function

$data modify storage hipochallenge local_end_exclusive set value $(end_exclusive)
$data modify storage hipochallenge local_command set value "$(command)"

scoreboard objectives add local_recursion dummy

$scoreboard players set $remaining_loops local_recursion $(end_exclusive)
scoreboard players set $local_current_iteration local_recursion 0

function hipochallenge:std/for/iterate with storage minecraft:hipochallenge

scoreboard objectives remove local_recursion

data remove storage hipochallenge local_end_exclusive
data remove storage hipochallenge local_command