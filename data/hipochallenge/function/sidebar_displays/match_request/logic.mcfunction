scoreboard objectives add local dummy

# count current players and store
scoreboard players set $count local 0
execute as @a[tag=accepted_match_request] run scoreboard players add $count local 1

execute store result storage minecraft:hipochallenge users_playing int 1 run scoreboard players get $count local

# count one tick down in the internal timer
scoreboard players remove $match_request_timer value 1

# if timer reaches end, run end function
execute if score $match_request_timer value matches ..0 run return run function hipochallenge:sidebar_displays/match_request/end

# calculate remaining ticks as seconds for display
scoreboard players set $ticks_per_second local 20
scoreboard players operation $timer_seconds local = $match_request_timer value
scoreboard players operation $timer_seconds local /= $ticks_per_second local
execute store result storage minecraft:hipochallenge local_time_in_seconds int 1 run scoreboard players get $timer_seconds local

# update sidebar
function hipochallenge:sidebar_displays/match_request/update with storage minecraft:hipochallenge

scoreboard objectives remove local