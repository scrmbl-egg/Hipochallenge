# storage
    # local_time_in_seconds

scoreboard objectives add local dummy

execute store result score #is_tournament local run data get storage minecraft:hipochallenge is_competitive_mode 1

execute if score #is_tournament local matches 0 run scoreboard players display name $mr_display6 match_request_display [{"bold":true,"color":"#00FF09","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" < "},{"bold":false,"color":"#024A4D","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]
execute if score #is_tournament local matches 1 run scoreboard players display name $mr_display6 match_request_display [{"bold":false,"color":"#005903","translate":"hc.gamemode.casual","fallback":"CASUAL MODE"},{"bold":true,"color":"white","text":" > "},{"bold":true,"color":"#05F7FF","translate":"hc.gamemode.competitive","fallback":"COMPETITIVE MODE"}]

$scoreboard players display name $mr_display4 match_request_display [{"fallback":"Players: %1$s / %2$s","translate":"hc.sidebar.match_request.player_count","with":[{"color":"green","text":"$(users_playing)"},{"color":"dark_green","text":"$(NECESSARY_PLAYERS_FOR_GAME)"}]}]

$scoreboard players display name $mr_display0 match_request_display [{"bold":true,"color":"white","fallback":"Time remaining: %s","translate":"hc.sidebar.match_request.time_remaining","with":[{"bold":false,"color":"red","text":"$(local_time_in_seconds)"}]}]

# schedule next step
schedule function hipochallenge:sidebar_displays/match_request/logic 1t

# free memory
data remove storage minecraft:hipochallenge local_time_in_seconds
scoreboard objectives remove local
