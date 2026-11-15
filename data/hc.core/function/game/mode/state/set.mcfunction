#>hc.core:game/mode/state/set
#
# Sets the new state of a game mode, calling the proper callback functions.
#
# Using `0` as the `id` argument ends the match.
#
# @input
#   id: int
#       ID of the next state.

# save argument for later
$data modify storage hc:temp set_state set value { \
    id:$(id), \
}

# if current state has exit function (unlike null state), call it
execute if data storage hc:main vars.game_context.mode.state.on_exit_function \
    run \
    function std:function/call_from_nbt { \
        function_storage:"hc:main", \
        function_nbt:"vars.game_context.mode.state.on_exit_function", \
        args:{}, \
    }

# if specified ID is 0, set the current state to an empty struct and return
# early
execute if data storage hc:temp set_state{id:0} \
    run \
    function hc.core:game/match/end
execute if data storage hc:temp set_state{id:0} \
    run \
    return run \
    data remove storage hc:temp set_state

# else...
# set state (preset states array is guaranteed, no need to check its presence)
$data modify storage hc:main vars.game_context.mode.state \
    set from storage hc:main vars.game_context.mode.preset.states[{id:$(id)}]

# send debug message
function hc:msg/debug/send_info { \
    text:[ \
        { \
            translate:"", \
            fallback:"Switching to state: %1$s (from mode: %2$s)", \
            with:[ \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.state.key", \
                }, \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.preset.key", \
                }, \
            ], \
        }, \
    ], \
}

# run new state's on_enter_function
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.state.on_enter_function", \
    args:{}, \
}

# free memory
data remove storage hc:temp set_state
