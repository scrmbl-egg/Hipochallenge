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

# set displays
scoreboard players display numberformat $mr_display7 match_request_display fixed ""
scoreboard players display name $mr_display7 match_request_display ""
 
execute store result score #istournament local run data get storage minecraft:hipochallenge is_competitive_mode 1
scoreboard players display numberformat $mr_display6 match_request_display fixed ""
execute if score #istournament local matches 0 run scoreboard players display name $mr_display6 match_request_display [{"bold":true,"color":"#00FF09","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" < "},{"bold":false,"color":"#024A4D","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]
execute if score #istournament local matches 1 run scoreboard players display name $mr_display6 match_request_display [{"bold":false,"color":"#005903","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" > "},{"bold":true,"color":"#05F7FF","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]

scoreboard players display numberformat $mr_display5 match_request_display fixed ""
scoreboard players display name $mr_display5 match_request_display ""

scoreboard players display numberformat $mr_display4 match_request_display fixed ""
$scoreboard players display name $mr_display4 match_request_display [{"fallback":"Players: ","translate":"hc.sidebar.match_request.player_count"},{"color":"green","text":"$(users_playing)"},{"color":"white","text":" / "},{"color":"dark_green","text":"$(NECESSARY_PLAYERS_FOR_GAME)"}]

scoreboard players display numberformat $mr_display3 match_request_display fixed ""
scoreboard players display name $mr_display3 match_request_display ""

scoreboard players display numberformat $mr_display2 match_request_display fixed ""
scoreboard players display name $mr_display2 match_request_display {"fallback":"Type \"/trigger join\" to play!","translate":"hc.msg.all.join_command_tip"}

scoreboard players display numberformat $mr_display1 match_request_display fixed ""
scoreboard players display name $mr_display1 match_request_display ""

scoreboard players display numberformat $mr_display0 match_request_display fixed ""
scoreboard players display name $mr_display0 match_request_display [{"bold":true,"color":"white","fallback":"Time remaining: ","translate":"hc.sidebar.match_request.time_remaining"},{"bold":false,"score":{"name":"$remaining_time_match_prep","objective":"value"}}]

# free score
scoreboard objectives remove local

# display bar and play sound
scoreboard objectives setdisplay sidebar match_request_display
execute as @a at @s run playsound minecraft:notification1 master @s ~ ~ ~ 1 1

# schedule next logic step
execute store result score $match_prep_timer value run data get storage minecraft:hipochallenge MAX_GAME_REQUEST_TIME 1
schedule function hipochallenge:sidebar_displays/match_request/logic 1t