#>hc.core:game/match/request/end
#
# Frees all match request resources and teleports all players

# TODO: start match or show dialog depending on the mode's match request config

# remove display
function hc.core:game/match/request/display/remove

# set requesting_match to false
data modify storage hc:main vars.game_context.requesting_match set value false

# remove scoreboard
scoreboard objectives remove __hc.MatchRequest

# reset triggers and tags
tag @a remove hc.MatchHost
tag @a remove hc.WillJoinMatch
scoreboard players reset @a join
scoreboard players reset @a leave
scoreboard players reset @a cancel
scoreboard players enable @a request
