#>core_hc:storage/init_vars
#
# Initialises all global variables in the datapack.
#
# @returns
#   Result: 1 if all variables are initialised

## WARNING:
# Unsafe function!
#
# This function initializes all variables in the game. This is a dangerous
# function to execute because these values are changed during the game, and
# resetting them in this function may cause A LOT of unexpected behaviour.

function hc:msg/debug/send_info { \
    text:"\"Initialising datapack global variables...\"", \
}

# reload_count is the only variable that must be kept, save temporarily
data modify storage hc:temp init_vars.reload_count \
    set from storage hc:main vars.reload_count

# reset
data remove storage hc:main vars

## RELOAD COUNT
data modify storage hc:main vars.reload_count \
    set from storage hc:temp init_vars.reload_count

## GAME CONTEXTS
data modify storage hc:main vars.game_context set value { \
    mode:{ \
        state:{}, \
        preset:{ \
            internal_name:"hc:casual", \
            id:0, \
            name:{translate:"hc.gamemode.casual",fallback:"Casual"}, \
            team_size:3, \
            states:[ \
                { \
                    internal_name:"level_intro", \
                    id:1, \
                    on_enter_function:"core_hc:mode/casual/level_intro/on_enter", \
                    on_tick_function:"core_hc:mode/casual/level_intro/on_tick", \
                    on_exit_function:"core_hc:mode/casual/level_intro/on_exit", \
                }, \
                { \
                    internal_name:"intermission", \
                    id:2, \
                    on_enter_function:"core_hc:mode/casual/intermission/on_enter", \
                    on_tick_function:"core_hc:mode/casual/intermission/on_tick", \
                    on_exit_function:"core_hc:mode/casual/intermission/on_exit", \
                    start_state:{}, \
                }, \
                { \
                    internal_name:"round", \
                    id:3, \
                    on_enter_function:"core_hc:mode/casual/round/on_enter", \
                    on_tick_function:"core_hc:mode/casual/round/on_tick", \
                    on_exit_function:"core_hc:mode/casual/round/on_exit", \
                }, \
            ], \
            casual_data:{ \
                rounds_to_win:5, \
                round_duration_seconds:120, \
                intermission_duration_seconds:30, \
            }, \
        }, \
    }, \
    banned_level_ids:[], \
    users_playing:0, \
}

## TEAM CONTEXTS
# NOTE: for presets, copy team presets

# delete custom names
data remove storage hc:main vars.team_contexts.team1.custom_name
data remove storage hc:main vars.team_contexts.team2.custom_name

data modify storage hc:main vars.team_contexts set value { \
    team1:{ \
        preset:{ \
            internal_name:"hc:red", \
            id:1, \
            default_name:{translate:"hc.teams.colors.red",fallback:"RED"}, \
            name_color:"#ff3030", \
            text_color:"red", \
            dust_color:[1.0f,0.0f,0.0f], \
            armor_dye_color:10952471, \
            trim_material:"minecraft:redstone", \
        }, \
        player_profiles:[], \
    }, \
    team2:{ \
        preset:{ \
            internal_name:"hc:blue", \
            id:4, \
            default_name:{translate:"hc.teams.colors.blue",fallback:"BLUE"}, \
            name_color:"#3f3bff", \
            text_color:"blue", \
            dust_color:[0.0f,0.0f,1.0f], \
            armor_dye_color:1977039, \
            trim_material:"minecraft:lapis", \
        }, \
        player_profiles:[], \
    }, \
}

# free memory
data remove storage hc:temp init_vars

## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
