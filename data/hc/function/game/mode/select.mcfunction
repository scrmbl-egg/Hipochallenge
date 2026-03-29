#>hc:game/mode/select
#
# Sets the current game mode preset from a specified name.
#
# @input
#   internal_name: #[match_regex="^[a-z0-9_]+(:[a-z0-9_]+)?$"] string
#       Internal name of the game mode.

# don't select if match isn't being played
execute if predicate hc:game/match/is_being_played \
    run \
    return run \
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.cannot_select_mode_when_match_is_being_played", \
            fallback:"Can't select a different mode when a match is already being played", \
        }, \
    }

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
                    nbt:"vars.game_context.mode.preset.name.fallback", \
                }, \
                { \
                    storage:"hc:main", \
                    nbt:"vars.game_context.mode.preset.internal_name", \
                }, \
            ], \
        }, \
    ], \
}
