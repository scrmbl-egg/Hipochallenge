# storage:
    # local_command

# run command and reiterate if local_i < local_size
$execute if score $local_i local_000 < $local_size local_000 as @s run $(local_command)

# add one to current iteration
scoreboard players add $local_i local_000 1

execute if score $local_i local_000 < $local_size local_000 as @s run function hipochallenge:std/for/unsafe/iterate_st with storage minecraft:hipochallenge