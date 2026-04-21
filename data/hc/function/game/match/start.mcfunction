#>hc:game/match/start
#
# Starts a match with the currently selected game mode.

# if match is being played, don't execute the rest of this function
execute if predicate hc:game/match/is_being_played \
    run \
    return run \
    function hc:msg/debug/send_warning { \
        text:{ \
            translate:"", \
            fallback:"Attempted to start a match when one is already being played. Try calling the '%s' function.", \
            with:["hc:game/match/try_cancel"], \
        }, \
    }
# else...

# just in case, end the current match request
function core_hc:game/match/request/end

# check if start_state flag is present in the preset state array
execute if data storage \
    hc:main vars.game_context.mode.preset.states[{start_state:{}}] \
    run \
    data modify storage hc:main vars.game_context.mode.state \
    set from storage \
    hc:main vars.game_context.mode.preset.states[{start_state:{}}]
# if not, just take the first state object
execute unless data storage \
    hc:main vars.game_context.mode.preset.states[{start_state:{}}] \
    run \
    data modify storage hc:main vars.game_context.mode.state \
    set from storage hc:main vars.game_context.mode.preset.states[0]

# run start function
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.preset.on_start_function", \
}

# send debug message
function hc:msg/debug/send_info { \
    text:[ \
        { \
            translate:"", \
            fallback:"Starting with state: %1$s (from mode: %2$s)", \
            with:[ \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.state.internal_name", \
                }, \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.preset.internal_name", \
                }, \
            ], \
        }, \
    ], \
}

# run state enter function
function std:function/call_from_nbt { \
    function_storage:"hc:main", \
    function_nbt:"vars.game_context.mode.state.on_enter_function", \
}
