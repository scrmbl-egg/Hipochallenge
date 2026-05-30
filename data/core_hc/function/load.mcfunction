#>core_hc:load
#
# Datapack entry point function.

# create local score objectives for initialization errors and keeping reload
# count
scoreboard objectives add __hc.InitError dummy
scoreboard objectives add __hc.ReloadCount dummy

# init all errors as
scoreboard players set hc:init_consts __hc.InitError 0
scoreboard players set hc:add_score_objectives __hc.InitError 0
scoreboard players set hc:add_teams __hc.InitError 0
scoreboard players set hc:set_gamerules __hc.InitError 0

# loading message
tellraw @a [ \
    "", \
    {text:"[HIPOCHALLENGE: ",color:"#ebeeff",bold:true}, \
    {text:"P",color:"#ff493b"}, {text:"h",color:"#ff5538"}, \
    {text:"o",color:"#ff6035"}, {text:"e",color:"#ff6b31"}, \
    {text:"n",color:"#ff762e"}, {text:"i",color:"#ff822b"}, \
    {text:"x",color:"#ff8d28"}, {text:"]: ",color:"#ebeeff",bold:true}, \
    {translate:"commands.reload.success",fallback:"Reloading!"}, \
]


## STORAGE CONSTANTS
execute store result score hc:init_consts __hc.InitError \
    run \
    function core_hc:storage/init_consts

# error msg
execute if score hc:init_consts __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.consts_not_initialized", \
            fallback:"The datapack constants couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }

## STORAGE VARIABLES
# skip step if already initialized
execute if data storage hc:main vars \
    run \
    function hc:msg/debug/send_info { \
        text:"\"Datapack global variables already initialized. Skipping initialization...\"", \
    }

execute unless data storage hc:main vars \
    store result score hc:init_vars __hc.InitError \
    run \
    function core_hc:storage/init_vars

# error msg
execute if score hc:init_vars __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.vars_not_initialized", \
            fallback:"The datapack global variables couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }


## SCORE OBJETIVES
execute store result score hc:add_score_objectives __hc.InitError \
    run \
    function core_hc:score/add_all_objectives

# error msg
execute if score hc:add_score_objectives __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.scores_not_initialized", \
            fallback:"The datapack score objectives couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }

## TRIGGERS (SCORE TRIGGER TYPES)
execute store result score hc:init_triggers __hc.InitError \
    run \
    function core_hc:trigger/add_all

# error msg
execute if score hc:init_triggers __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.triggers_not_initialized", \
            fallback:"The datapack triggers couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }

## TEAMS
execute store result score hc:add_teams __hc.InitError \
    run \
    function core_hc:team/add_all

# error msg
execute if score hc:add_teams __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.teams_not_initialized", \
            fallback:"The datapack teams couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }

## GAMERULES
execute store result score hc:set_gamerules __hc.InitError \
    run \
    function core_hc:gamerule/set_all

# error msg
execute if score hc:set_gamerules __hc.InitError matches 0 \
    run \
    function hc:msg/all/send_error { \
        text:{ \
            translate:"hc.msg.all.error.gamerules_not_initialized", \
            fallback:"The datapack gamerules couldn't be initialized. Contact a developer if you see this message", \
        }, \
    }

## __KEEP AT BOTTOM OF FILE__

## schedule main functions
function hc:msg/debug/send_info { \
    text:"\"Scheduling tick functions...\"", \
}

schedule clear core_hc:ten_ticks
schedule function core_hc:ten_ticks 10t

schedule clear core_hc:second
schedule function core_hc:second 1s

# add one to reload count
execute store result score hc:reload_count __hc.ReloadCount \
    run \
    data get storage hc:main vars.reload_count

scoreboard players add hc:reload_count __hc.ReloadCount 1

execute store result storage hc:main vars.reload_count \
    int 1 \
    run \
    scoreboard players get hc:reload_count __hc.ReloadCount

# reload success message
tellraw @a [ \
    "", \
    {text:"[HIPOCHALLENGE: ",color:"#ebeeff",bold:true}, \
    {text:"P",color:"#ff493b"}, {text:"h",color:"#ff5538"}, \
    {text:"o",color:"#ff6035"}, {text:"e",color:"#ff6b31"}, \
    {text:"n",color:"#ff762e"}, {text:"i",color:"#ff822b"}, \
    {text:"x",color:"#ff8d28"}, {text:"]: ",color:"#ebeeff",bold:true}, \
    {translate:"hc.reload_message.reloaded",fallback:"Reloaded!"}, \
    "\n- ", \
    { \
        translate:"hc.reload_message.version", \
        fallback:"Version: %s", \
        with:[{storage:"hc:main",nbt:"consts.map_version",color:"green"}], \
    }, \
    "\n- ", \
    { \
        translate:"hc.reload_message.reload_count", \
        fallback:"Reload count: %s", \
        with:[{storage:"hc:main",nbt:"vars.reload_count",color:"green"}], \
    }, \
]

# sound
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 0 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.5 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.2 0.25
execute as @a[tag=!hc.DarioUpdate] \
    at @s \
    run \
    playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
execute as @a[tag=hc.DarioUpdate] \
    at @s \
    run \
    playsound hc:dario.dario_update master @s ~ ~ ~ 1 1 1

# free memory
scoreboard objectives remove __hc.InitError
scoreboard objectives remove __hc.ReloadCount
