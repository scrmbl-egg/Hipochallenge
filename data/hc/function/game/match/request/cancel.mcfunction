#>hc:game/match/request/cancel
#
# Cancels the current match request.

# check if a match request is currently running
execute unless predicate hc:game/match/is_being_requested \
    run \
    return fail

# end request
function hc.core:game/match/request/end

# remove tag from players
tag @a[predicate=hc:game/match/player_will_join] remove hc.WillJoinMatch
