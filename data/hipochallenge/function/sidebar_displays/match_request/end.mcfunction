scoreboard players reset $mr_display7
scoreboard players reset $mr_display6
scoreboard players reset $mr_display5
scoreboard players reset $mr_display4
scoreboard players reset $mr_display3
scoreboard players reset $mr_display2
scoreboard players reset $mr_display1
scoreboard players reset $mr_display0

scoreboard players reset $match_request_timer

schedule clear hipochallenge:sidebar_displays/match_request/logic

scoreboard players reset @a join
tag @a remove accepted_match_request
# clear scoreboard display
scoreboard objectives setdisplay sidebar
