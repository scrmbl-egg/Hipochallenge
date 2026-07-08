#>hc.core:game/match/request/display/update
#
# Updates the match request display.

## update host
execute if entity @p[tag=hc.MatchHost] \
    run \
    scoreboard players display name hc:r0 __hc.MatchRequestDisplay { \
        translate:"hc.match_request.host", \
        fallback:"Host: %s", \
        with:[{selector:"@p[tag=hc.MatchHost]"}], \
    }
execute unless entity @p[tag=hc.MatchHost] \
    run \
    scoreboard players display name hc:r0 __hc.MatchRequestDisplay { \
        translate:"hc.match_request.host", \
        fallback:"Host: %s", \
        with:[{text:"...",color:"gray"}], \
    }

## update player count
scoreboard players display name hc:r3 __hc.MatchRequestDisplay { \
    translate:"hc.match_request.player_count", \
    fallback:"Players: %1$s / %2$s", \
    with:[ \
        { \
            score:{ \
                name:"hc:joining_player_count", \
                objective:"__hc.MatchRequest", \
            }, \
        }, \
        { \
            score:{ \
                name:"hc:needed_player_count", \
                objective:"__hc.MatchRequest", \
            }, \
        }, \
    ], \
}

# show timer or waiting for start depending on state
execute if score \
    hc:joining_player_count __hc.MatchRequest >= \
    hc:needed_player_count __hc.MatchRequest \
    run \
    scoreboard players display name hc:r4 __hc.MatchRequestDisplay { \
        translate:"hc.match_request.waiting_to_start", \
        fallback:"Waiting to start...", \
        color:"green", \
    }
execute unless score \
    hc:joining_player_count __hc.MatchRequest >= \
    hc:needed_player_count __hc.MatchRequest \
    run \
    scoreboard players display name hc:r4 __hc.MatchRequestDisplay { \
        translate:"hc.match_request.time_remaining", \
        fallback:"Time remaining: %s", \
        with:[ \
            { \
                score:{ \
                    name:"hc:request_remaining_secs", \
                    objective:"__hc.MatchRequest", \
                }, \
                color:"red", \
            }, \
        ], \
    }
