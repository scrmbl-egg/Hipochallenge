#>core_hc:match/end
#
# Ends the current match and calls the proper functions to free all resources
# made for the match.
#
# Only using this function assumes the match ended gracefully, from the game
# mode's own states. If you wish to end the match prematurely, see the
# `core_hc:game/match/try_cancel` function and the
# `core_hc:game/match/try_cancel/` sub-module functions.

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
