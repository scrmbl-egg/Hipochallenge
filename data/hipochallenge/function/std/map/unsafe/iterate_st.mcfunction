# storage:
    # local_array_name
    # local_function_st

# turn current iteration into data for next caption
execute store result storage minecraft:hipochallenge local_idx int 1 run scoreboard players get $local_i local

# in:
    # local_array_name
    # local_idx
function hipochallenge:std/map/unsafe/get_element with storage minecraft:hipochallenge
# gives ownership of:
    # local_element

# in:
    # local_element
    # local_function_st
function hipochallenge:std/map/unsafe/run_function_with_element with storage minecraft:hipochallenge

# free copied array element
data remove storage minecraft:hipochallenge local_element

# add one to current iteration
scoreboard players add $local_i local 1

# run function_st and reiterate if local_i < local_size
execute if score $local_i local < $local_size local as @s run function hipochallenge:std/map/unsafe/iterate_st with storage minecraft:hipochallenge