#>core_hc:match/end
#
# Ends the current match and calls the proper functions to free all resources
# made for the match.
#
# Only using this function assumes the match is ended gracefully from the game
# mode's own states. If you wish to communicate the match has ended prematurely,
# see the `hc:game/match/cancel` function and the `hc:game/match/cancel/`
# sub-module functions.
#
# @returns
#   Result: 1 when match was ended, 0 if there was no match to end.

# if no match is being played, just fail silently
execute unless predicate hc:game/match/is_being_played \
    run \
    return fail

# send debug message
function hc:msg/debug/send_info {text:"\"Ending match...\""}

# call state exit function
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.state.on_exit_function", \
}

# call match/game mode end function
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.preset.on_end_function", \
}

# set current state to an empty object (makes `hc:mode/is_match_being_played`
# evaluate to false after this operation)
data modify storage hc:main vars.game_context.mode.state set value {}

# return 1 for success
return 1
