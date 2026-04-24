#>core_hc:game/match/request/init
#
# Initialises the match request.
#
# @context player

## set global variable flag
data modify storage hc:main vars.game_context.match_requested set value {}

## create temp match request scoreboard
scoreboard objectives add __hc.MatchRequest dummy

# set necessary tps constant
scoreboard players set hc:tps __hc.MatchRequest 20

## get necessary scores for display
# set duration (this is the score that will decrement)
execute store result score hc:request_remaining_ticks __hc.MatchRequest \
    run \
    data get storage hc:main consts.game.match_request.duration_seconds 20
# get equivalent in seconds (this is the score that will be divided)
execute store result score hc:request_remaining_secs __hc.MatchRequest \
    run \
    data get storage hc:main consts.game.match_request.duration_seconds

# count players that will join (this also has to be updated every tick)
scoreboard players set hc:joining_player_count __hc.MatchRequest 0
execute as @a[tag=hc.WillJoinMatch] \
    run \
    scoreboard players add hc:joining_player_count __hc.MatchRequest 1

# count necessary players (only has to be computed a single time)
execute store result score hc:needed_player_count __hc.MatchRequest \
    run \
    function std:array/int_sum { \
        array_storage:"hc:main", \
        array_nbt:"vars.game_context.mode.preset.team_sizes", \
    }

## init display
# this function depends on:
#   score: __hc.MatchRequest
#       hc:tps
#       hc:needed_player_count
#       hc:joining_player_count
#       hc:request_remaining_secs
function core_hc:game/match/request/display/init

# enable triggers
scoreboard players enable @a[tag=!hc.WillJoinMatch] join
scoreboard players enable @a[tag=hc.WillJoinMatch] leave
