#>core_hc:game/match/request_display/remove
#
# Removes the match request display from the sidebar

## remove sidebar display
# NOTE: this is done automatically when the score is deleted, but this is just
# in case.
scoreboard objectives setdisplay sidebar

# remove scoreboard
scoreboard objectives remove __hc.MatchRequestDisplay
