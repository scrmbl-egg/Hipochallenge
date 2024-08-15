# params
    # end_exclusive = 3
    # function

# TODO: make a standard for/iterator function

$data modify storage hipochallenge local_end_exclusive set value $(end_exclusive)
$data modify storage hipochallenge local_function set value "$(function)"

execute if score $remaining_loops local_recursion matches 1.. run function hipochallenge:std/for/iterate with storage minecraft:hipochallenge

data remove storage hipochallenge local_end_exclusive
data remove storage hipochallenge local_function