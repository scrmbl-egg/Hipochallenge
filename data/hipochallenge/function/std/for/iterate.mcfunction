# storage:
    # local_current_iteration
    # local_end_exclusive
    # local_command


scoreboard players add $local_recursion local_recursion 1

execute store result storage hipochallenge local_end_exclusive int 1 run scoreboard players get $remaining_loops local_recursion

$execute if score $remaining_loops local_recursion matches ..$(local_end_exclusive) run $(local_command) 
$execute if score $remaining_loops local_recursion matches ..$(local_end_exclusive) run function hipochallenge:std/for/iterate with storage minecraft:hipochallenge