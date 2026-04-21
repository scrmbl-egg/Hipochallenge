#>hc:game/match/cancel_request
#
# Cancels the current match request.

# check if a match request is currently running
execute unless data storage hc:main vars.game_context.match_requested \
    run \
    return fail

# remove match_requested flag
data remove storage hc:main vars.game_context.match_requested

# end request ticking
function core_hc:game/match/request/end

# remove tag from players
tag @a[predicate=hc:game/match/player_will_join] remove hc.WillJoinMatch
