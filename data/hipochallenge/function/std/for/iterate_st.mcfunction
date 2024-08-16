# storage:
    # local_command

# add one to current iteration
scoreboard players add $local_i local 1

# run command and reiterate if current_iteration < end_exclusive
$execute if score $local_i local < $local_size local run $(local_command)
execute if score $local_i local < $local_size local as @s run function hipochallenge:std/for/iterate_st with storage minecraft:hipochallenge