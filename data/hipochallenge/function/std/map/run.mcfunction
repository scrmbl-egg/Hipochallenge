# params
    # array_name
    # function_st (this function must have an "local_element" param)

scoreboard objectives add local_000 dummy

# save the parameters as local
$data modify storage minecraft:hipochallenge local_array_name set value "$(array_name)"
$data modify storage minecraft:hipochallenge local_function_st set value "$(function_st)"

# obtain size from referenced array
scoreboard players set $local_i local_000 0
$execute store result score $local_size local_000 run data get storage minecraft:hipochallenge $(array_name)

# execute recursive function
execute as @s run function hipochallenge:std/map/unsafe/iterate_st with storage minecraft:hipochallenge

scoreboard objectives remove local_000
data remove storage minecraft:hipochallenge local_array_name
data remove storage minecraft:hipochallenge local_function_st