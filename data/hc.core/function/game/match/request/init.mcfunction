#>hc.core:game/match/request/init
#
# initializes the match request.
#
# @context player

## set global variable to true
data modify storage hc:main vars.game_context.requesting_match set value true

## create temp match request scoreboard
scoreboard objectives add __hc.MatchRequest dummy

## get necessary scores for display
# set duration (this is the score that will decrement)
execute store result score hc:request_remaining_ticks __hc.MatchRequest \
    run \
    compute default integer hc:game/request/duration_ticks
# get equivalent in seconds (this provider handles hc:request_remaining_ticks)
execute store result score hc:request_remaining_secs __hc.MatchRequest \
    run \
    compute default integer hc:game/request/remaining_seconds

# count players that will join (this also has to be updated every tick)
scoreboard players set hc:joining_player_count __hc.MatchRequest 0
execute as @a[tag=hc.WillJoinMatch] \
    run \
    scoreboard players add hc:joining_player_count __hc.MatchRequest 1

# count necessary players (only has to be computed a single time)
execute store result score hc:needed_player_count __hc.MatchRequest \
    run \
    compute default integer hc:game/mode/needed_players

## init display
# this function depends on:
#   score: __hc.MatchRequest
#       hc:needed_player_count
#       hc:joining_player_count
#       hc:request_remaining_secs
function hc.core:game/match/request/display/init

# enable triggers
scoreboard players enable @a[tag=!hc.WillJoinMatch] join
scoreboard players enable @a[tag=hc.WillJoinMatch] leave
