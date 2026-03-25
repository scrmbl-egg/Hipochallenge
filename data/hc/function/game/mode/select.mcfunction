#>hc:game/mode/select
#
# Sets the current game mode preset from a specified name.
#
# @input
#   internal_name: #[match_regex="^[a-z0-9_]+(:[a-z0-9_]+)?$"] string
#       Internal name of the game mode.

# cancel match (function result is ignored)
function core_hc:game/match/try_cancel

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
