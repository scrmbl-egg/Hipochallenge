#>hc:mode/select
#
# Sets the current game mode preset from a specified name.
#
# @input
#   internal_name: #[match_regex="^[a-z0-9_]+(:[a-z0-9_]+)?$"] string
#       Name of the game mode.

# TODO: function for completely stopping current match
# HACK: to prevent leaks, try to execute the exit function of the running state
execute if data storage hc:main vars.game_context.mode.state.on_exit_function \
    run \
    function std:function/call_from_nbt { \
        function_storage:"hc:main", \
        function_nbt:"vars.game_context.mode.state.on_exit_function", \
    }

# reset state
data modify storage hc:main vars.game_context.mode.state set value {}
# TODO: this should probably go into that reset function mentioned previously

# get preset
$data modify storage hc:main vars.game_context.mode.preset \
    set from storage \
    hc:main consts.game.modes[{internal_name:"$(internal_name)"}]

# debug message
function hc:msg/debug/send_info { \
    text:[ \
        "", \
        { \
            translate:"",fallback:"Selected game mode: %1$s (%2$s)", \
            with:[ \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.preset.internal_name", \
                }, \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.preset.name.fallback", \
                }, \
            ], \
        }, \
    ], \
}
