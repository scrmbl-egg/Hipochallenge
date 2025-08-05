#>core_hc:load
#
# Datapack entry point function.

# reload message and sounds, add one to version
tellraw @a [ \
    "", \
    {text:"HIPOCHALLENGE: ",bold:true,color:"white",}, \
    {text:"Phoenix ",color:"red"}, \
    {text:"- ",color:"gray"}, \
    {text:"Reloaded! - v",bold:false,color:"aqua"}, \
    {score:{name:"#version",objective:"value"},bold:false,color:"aqua"}, \
]
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 0 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.5 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.2 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
execute as @a[tag=dario_update] at @s run playsound hipochallenge:dario.dario_update master @s ~ ~ ~ 1 1 1
scoreboard players add #version value 1

# data constants
# TODO: remove first function when all constants are replaced
function hipochallenge:storage/init_consts
function core_hc:storage/init_consts

# scoreboards
function core_hc:score/init_all

# display scores
# TODO: the code inside the following function should go in score/init_all
function hipochallenge:sidebar_displays/init_sidebar_displays

# teams
function core_hc:team/init_all

# gamerules
function core_hc:gamerule/init_all

# logo
#function hipochallenge:msg/debug/send_info {text:"\"Restarting logos...\""}
kill @e[tag=logo]

# FIXME: logo display entity has such a long JSON text string that it could
# cause players to disconnect when attempting to render it.
#execute positioned 458 -46 -100 run function hipochallenge:lobby/logo
#execute positioned -84 -32 151 run function hipochallenge:lobby/logo

# schedule main functions
function hipochallenge:msg/debug/send_info {text:"\"Scheduling tick functions...\""}

schedule clear core_hc:ten_ticks
schedule function core_hc:ten_ticks 10t

schedule clear core_hc:second
schedule function core_hc:second 1s

# update team text displays
#function hipochallenge:msg/debug/send_info {text:"Updating text displays..."}
#function hipochallenge:team/text_displays/update_st with storage minecraft:hipochallenge
