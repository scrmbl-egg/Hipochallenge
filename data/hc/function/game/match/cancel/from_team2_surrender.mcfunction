#>hc:game/match/cancel/from_team2_surrender
#
# Attempts to cancel the current match. If there is a match being played, it
# will successfully cancel it and send a message, specifying the second team
# has surrendered, thus giving the win to the first team.

# setup temp data
data modify storage hc:temp team2_surrender_cancel set value { \
    cancel_args:{ \
        reason:{ \
            translate:"hc.match_cancelled.team_surrendered", \
            fallback:"The %1$s team has surrendered. The %2$s team wins", \
            with:[{}, {}], \
        }, \
    }, \
}
# get team names
function hc:team/team2/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"team2_surrender_cancel.cancel_args.reason.with[0]", \
}
function hc:team/team1/get_displayed_name_text { \
    out_storage:"hc:temp", \
    out_nbt:"team2_surrender_cancel.cancel_args.reason.with[1]", \
}
# color team names
data modify storage \
    hc:temp team2_surrender_cancel.cancel_args.reason.with[0] \
    merge value {color:"gray"}
data modify storage \
    hc:temp team2_surrender_cancel.cancel_args.reason.with[1] \
    merge value {color:"gray"}


# cancel match
function hc:game/match/cancel_with_reason \
    with storage hc:temp team2_surrender_cancel.cancel_args


# free memory
data remove storage hc:temp team2_surrender_cancel
