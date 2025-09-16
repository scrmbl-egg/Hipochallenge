#>core_hc:load
#
# Datapack entry point function.

# create local scoreboard for initialisation errors
scoreboard objectives add __hc.InitError dummy
scoreboard objectives add __hc.ReloadCount dummy

scoreboard players set __$hc_init_consts __hc.InitError 0
scoreboard players set __$hc_init_scores __hc.InitError 0
scoreboard players set __$hc_init_teams __hc.InitError 0
scoreboard players set __$hc_init_gamerules __hc.InitError 0

# loading message
tellraw @a [ \
    "", \
    {color:"white",bold:true,text:"HIPOCHALLENGE: "}, \
    {color:"#ff493b",text:"P"}, \
    {color:"#ff5538",text:"h"}, \
    {color:"#ff6035",text:"o"}, \
    {color:"#ff6b31",text:"e"}, \
    {color:"#ff762e",text:"n"}, \
    {color:"#ff822b",text:"i"}, \
    {color:"#ff8d28",text:"x"}, \
    ": ", \
    {translate:"commands.reload.success",fallback:"Reloading!"}, \
]


## STORAGE CONSTANTS
# TODO: remove first function when all constants are replaced
function hipochallenge:storage/init_consts

execute store result score __$hc_init_consts __hc.InitError \
    run \
    function core_hc:storage/init_consts

# error msg
execute if score __$hc_init_consts __hc.InitError matches 0 \
    run \
    function hipochallenge:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.consts_not_initialised", \
            fallback:"The datapack constants couldn't be initialised. Contact a developer if you see this message", \
        }, \
    }

## STORAGE VARIABLES
# skip step if already initialised
execute if data storage minecraft:hipochallenge vars \
    run \
    function hipochallenge:msg/debug/send_info { \
        text:"\"Datapack variables already initialised...\"", \
    }

execute unless data storage minecraft:hipochallenge vars \
    store result score __$hc_init_vars __hc.InitError \
    run \
    function core_hc:storage/init_vars


## SCORE OBJETIVES
execute store result score __$hc_init_scores __hc.InitError \
    run \
    function core_hc:score/init_all

# error msg
execute if score __$hc_init_scores __hc.InitError matches 0 \
    run \
    function hipochallenge:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.scores_not_initialised", \
            fallback:"The datapack score objectives couldn't be initialised. Contact a developer if you see this message", \
        }, \
    }

## TEAMS
execute store result score __$hc_init_teams __hc.InitError \
    run \
    function core_hc:team/init_all

# error msg
execute if score __$hc_init_teams __hc.InitError matches 0 \
    run \
    function hipochallenge:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.teams_not_initialised", \
            fallback:"The datapack teams couldn't be initialised. Contact a developer if you see this message", \
        }, \
    }

## GAMERULES
execute store result score __$hc_init_gamerules __hc.InitError \
    run \
    function core_hc:gamerule/init_all

# error msg
execute if score __$hc_init_gamerules __hc.InitError matches 0 \
    run \
    function hipochallenge:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.gamerules_not_initialised", \
            fallback:"The datapack gamerules couldn't be initialised. Contact a developer if you see this message", \
        }, \
    }

## __KEEP AT BOTTOM OF FILE__

## schedule main functions
function hipochallenge:msg/debug/send_info { \
    text:"\"Scheduling tick functions...\"", \
}

schedule clear core_hc:ten_ticks
schedule function core_hc:ten_ticks 10t

schedule clear core_hc:second
schedule function core_hc:second 1s

# add one to reload count
execute store result score __$hc_reload_count __hc.ReloadCount \
    run \
    data get storage minecraft:hipochallenge vars.reload_count

scoreboard players add __$hc_reload_count __hc.ReloadCount 1

execute store result storage minecraft:hipochallenge vars.reload_count \
    int 1 \
    run \
    scoreboard players get __$hc_reload_count __hc.ReloadCount

# reload success message
tellraw @a [ \
    "", \
    {color:"white",bold:true,text:"HIPOCHALLENGE: "}, \
    {color:"#ff493b",text:"P"}, \
    {color:"#ff5538",text:"h"}, \
    {color:"#ff6035",text:"o"}, \
    {color:"#ff6b31",text:"e"}, \
    {color:"#ff762e",text:"n"}, \
    {color:"#ff822b",text:"i"}, \
    {color:"#ff8d28",text:"x"}, \
    "\n", \
    {text:"- "}, \
    { \
        translate:"mco.version", \
        fallback:"Version: %s", \
        with:[ \
            { \
                storage:"minecraft:hipochallenge", \
                nbt:"consts.game.map_version", \
                color:"green", \
            }, \
        ], \
    }, \
    "\n", \
    {text:"- "}, \
    {text:"Reload count: "}, \
    { \
        storage:"minecraft:hipochallenge", \
        nbt:"vars.reload_count", \
        color:"green" \
    }, \
]

# sound
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup \
    master @s ~ ~ ~ 0.25 0 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup \
    master @s ~ ~ ~ 0.25 1.5 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup \
    master @s ~ ~ ~ 0.25 1.2 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup \
    master @s ~ ~ ~ 0.25 1 0.25
execute as @a[tag=hc.DarioUpdate] \
    at @s \
    run \
    playsound hipochallenge:dario.dario_update \
    master @s ~ ~ ~ 1 1 1

# free memory
scoreboard objectives remove __hc.InitError
scoreboard objectives remove __hc.ReloadCount
