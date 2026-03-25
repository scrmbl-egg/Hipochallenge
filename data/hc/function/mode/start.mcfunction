#>hc:mode/start
#
# Starts the currently selected game mode.

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
