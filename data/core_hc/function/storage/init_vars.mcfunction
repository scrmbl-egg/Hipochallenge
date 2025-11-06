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

# reset
data remove storage hc:main vars

## RELOAD COUNT
data modify storage hc:main vars.reload_count set value 0

## GAME CONTEXTS
data modify storage hc:main vars.game_context set value { \
    current_state:1b, \
    current_game_mode_id:0b, \
    current_level_id:0b, \
    banned_level_ids:[], \
    users_playing:0, \
    current_round:1, \
    team1_wins:0, \
    team2_wins:0, \
}

## TEAM CONTEXTS
# NOTE: for presets, copy team presets

# delete custom names
data remove storage hc:main vars.team_contexts.team1.custom_name
data remove storage hc:main vars.team_contexts.team2.custom_name

data modify storage hc:main vars.team_contexts set value { \
    team1:{ \
        preset:{ \
            internal_name:"red", \
            id:1, \
            default_name:{translate:"hc.teams.colors.red",fallback:"RED"}, \
            name_color:"#ff0000", \
            text_color:"red", \
            dust_color:[1.0f,0.0f,0.0f], \
            armor_dye_color:11546150, \
            trim_material:"minecraft:redstone", \
        }, \
        player_profiles:[], \
    }, \
    team2:{ \
        preset:{ \
            internal_name:"blue", \
            id:4, \
            default_name:{translate:"hc.teams.colors.blue",fallback:"BLUE"}, \
            name_color:"blue", \
            text_color:"blue", \
            dust_color:[0.0f,0.0f,1.0f], \
            armor_dye_color:3949738, \
            trim_material:"minecraft:lapis", \
        }, \
        player_profiles:[], \
    }, \
}

## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
