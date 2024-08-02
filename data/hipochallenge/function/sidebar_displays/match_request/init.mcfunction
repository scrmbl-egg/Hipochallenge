scoreboard objectives add local dummy


# init sidebar rows
scoreboard players set $mr_display7 match_request_display 7
scoreboard players set $mr_display6 match_request_display 6
scoreboard players set $mr_display5 match_request_display 5
scoreboard players set $mr_display4 match_request_display 4
scoreboard players set $mr_display3 match_request_display 3
scoreboard players set $mr_display2 match_request_display 2
scoreboard players set $mr_display1 match_request_display 1
scoreboard players set $mr_display0 match_request_display 0

# get gamemode

execute store result score #is_competitive_mode local run data get storage minecraft:hipochallenge is_competitive_mode 1

# get remaining time

execute store result score #start_time local run data get storage minecraft:hipochallenge MATCH_REQUEST_DURATION_TICKS

scoreboard players set #ticks_per_second local 20

scoreboard players operation #start_time local /= $ticks_per_second value

scoreboard players reset $ticks_per_second

# set displays
scoreboard players display numberformat $mr_display7 match_request_display fixed ""
scoreboard players display name $mr_display7 match_request_display ""

scoreboard players display numberformat $mr_display6 match_request_display fixed ""
execute if score #is_competitive_mode local matches 0 run scoreboard players display name $mr_display6 match_request_display [{"bold":true,"color":"#00FF09","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" < "},{"bold":false,"color":"#024A4D","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]
execute if score #is_competitive_mode local matches 1 run scoreboard players display name $mr_display6 match_request_display [{"bold":false,"color":"#005903","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" > "},{"bold":true,"color":"#05F7FF","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]

scoreboard players display numberformat $mr_display5 match_request_display fixed ""
scoreboard players display name $mr_display5 match_request_display ""

scoreboard players display numberformat $mr_display4 match_request_display fixed ""
$scoreboard players display name $mr_display4 match_request_display [{"fallback":"Players: %1$s / %2$s","translate":"hc.sidebar.match_request.player_count","with":[{"color":"green","text":"$(users_playing)"},{"color":"dark_green","text":"$(NECESSARY_PLAYERS_FOR_GAME)"}]}]

scoreboard players display numberformat $mr_display3 match_request_display fixed ""
scoreboard players display name $mr_display3 match_request_display ""

scoreboard players display numberformat $mr_display2 match_request_display fixed ""
scoreboard players display name $mr_display2 match_request_display {"fallback":"Type \"%s\" to play!","translate":"hc.sidebar.match_request.join_command_tip","with":[{"color":"gray","text":"/trigger join"}]}

scoreboard players display numberformat $mr_display1 match_request_display fixed ""
scoreboard players display name $mr_display1 match_request_display ""

scoreboard players display numberformat $mr_display0 match_request_display fixed ""
scoreboard players display name $mr_display0 match_request_display [{"bold":true,"color":"white","fallback":"Time remaining: %s","translate":"hc.sidebar.match_request.time_remaining","with":[{"bold":false,"color":"red","score":{"name":"#start_time","objective":"local"}}]}]

# display bar and play sound
scoreboard objectives setdisplay sidebar match_request_display
execute as @a at @s run playsound minecraft:notification1 master @s ~ ~ ~ 1 1

# free scores 
scoreboard objectives remove local
scoreboard players reset $remaining_time

# schedule next logic step
execute store result score $match_request_timer value run data get storage minecraft:hipochallenge MATCH_REQUEST_DURATION_TICKS 1
schedule function hipochallenge:sidebar_displays/match_request/logic 1t
