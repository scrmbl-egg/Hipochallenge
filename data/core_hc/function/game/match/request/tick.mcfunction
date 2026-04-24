#>core_hc:game/match/request/tick
#
# Tick function for the match request logic.

# decrement remaining ticks ONLY if there are not enough players
execute if score \
    hc:joining_player_count __hc.MatchRequest < \
    hc:needed_player_count __hc.MatchRequest \
    run \
    scoreboard players remove hc:request_remaining_ticks __hc.MatchRequest 1

# get seconds remaining (+1 to round UP)
scoreboard players operation \
    hc:request_remaining_secs __hc.MatchRequest = \
    hc:request_remaining_ticks __hc.MatchRequest
scoreboard players operation \
    hc:request_remaining_secs __hc.MatchRequest /= \
    hc:tps __hc.MatchRequest
scoreboard players add hc:request_remaining_secs __hc.MatchRequest 1

## get joining players
scoreboard players set hc:joining_player_count __hc.MatchRequest 0
execute as @a[predicate=hc:game/match/player_will_join] \
    run \
    scoreboard players add hc:joining_player_count __hc.MatchRequest 1

## host handling
# always try to assign a host from the joining players if the original host left
execute unless entity @p[tag=hc.MatchHost] \
    as @r[tag=hc.WillJoinMatch] \
    run \
    function core_hc:game/match/make_player_host

## enable or disable start trigger for match host
execute if score \
    hc:joining_player_count __hc.MatchRequest >= \
    hc:needed_player_count __hc.MatchRequest \
    run \
    scoreboard players enable @a[tag=hc.MatchHost] start
execute unless score \
    hc:joining_player_count __hc.MatchRequest >= \
    hc:needed_player_count __hc.MatchRequest \
    run \
    scoreboard players reset @a start

## update display
function core_hc:game/match/request/display/update

# end if time reaches the end
execute if score \
    hc:request_remaining_ticks __hc.MatchRequest matches ..0 \
    run \
    function core_hc:game/match/request/end
