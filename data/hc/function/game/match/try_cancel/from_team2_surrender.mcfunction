#>hc:game/match/try_cancel/from_team2_surrender
#
# Ends a match prematurely, freeing all resources. Announces the first team
# as the winners of the match.

# setup temp data
data modify storage hc:temp team2_surrender_cancel set value { \
    try_cancel_args:{ \
        reason:{ \
            translate:"hc.match_cancelled.team_surrendered", \
            fallback:"", \
            with:[{}, {}], \
        }, \
    }, \
}
# get team names
function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"team2_surrender_cancel.try_cancel_args.reason.with[0]", \
}
function hc:team/team1/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"team2_surrender_cancel.try_cancel_args.reason.with[1]", \
}
# color team names
data modify storage \
    hc:temp team2_surrender_cancel.try_cancel_args.reason.with[0] \
    merge value {color:"gray"}
data modify storage \
    hc:temp team2_surrender_cancel.try_cancel_args.reason.with[1] \
    merge value {color:"gray"}


# cancel match
function hc:game/match/try_cancel \
    with storage hc:temp team2_surrender_cancel.try_cancel_args


# free memory
data remove storage hc:temp team2_surrender_cancel
