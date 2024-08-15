# storage:
    # local_end_exclusive
    # local_function

scoreboard objectives add local_recursion dummy

$scoreboard players set $remaining_loops local_recursion $(end_exclusive)

$function $(function)

scoreboard players remove $remaining_loops local_recursion 1

execute if score $remaining_loops local_recursion matches 1.. run function hipochallenge:std/for/for {end_exclusive:"",function:"$(function)"}

scoreboard objectives remove local_recursion