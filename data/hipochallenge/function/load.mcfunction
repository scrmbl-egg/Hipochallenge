# reload function
function hipochallenge:msg/debug/msg_info {msg:"Loading datapack..."}

# announce reload
function hipochallenge:msg/debug/msg_info {msg:"Announcing reload..."}

tellraw @a [{"bold":true,"color":"white","text":"HIPOCHALLENGE: "},{"bold":false,"color":"red","italic":false,"obfuscated":false,"strikethrough":false,"text":"Phoenix ","underlined":false},{"color":"gray","text":"- "},{"bold":false,"color":"aqua","text":"¡Recargado! - v"},{"bold":false,"color":"aqua","score":{"name":"#version","objective":"value"}}]
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 0 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.5 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1.2 0.25
execute as @a[tag=!dario_update] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.25 1 0.25
execute as @a[tag=dario_update] at @s run playsound hipochallenge:dario.dario_update master @s ~ ~ ~ 1 1 1 
scoreboard players add #version value 1

# data constants
# TODO: use experimental init_consts function once all constant references are changed
function hipochallenge:storage/init_consts
#function hipochallenge:storage/new/init_consts

# scoreboards
function hipochallenge:msg/debug/msg_info {msg:"Initialising scoreboards..."}
function hipochallenge:scores/init_scores

# display scores
function hipochallenge:msg/debug/msg_info {msg:""}
function hipochallenge:sidebar_displays/init_sidebar_displays

# teams
function hipochallenge:msg/debug/msg_info {msg:"Creating teams..."}
function hipochallenge:teams/init_teams

# gamerules
function hipochallenge:msg/debug/msg_info {msg:"Setting gamerules..."}
function hipochallenge:gamerules/init_gamerules

# logo
function hipochallenge:msg/debug/msg_info {msg:"Restarting logos..."}
kill @e[tag=logo]
execute positioned 458 -46 -100 run function hipochallenge:lobby/logo
execute positioned -84 -32 151 run function hipochallenge:lobby/logo

# schedule main functions
function hipochallenge:msg/debug/msg_info {msg:"Scheduling main functions..."}

schedule clear hipochallenge:main_ten_ticks
schedule function hipochallenge:main_ten_ticks 10t

schedule clear hipochallenge:main_sec
schedule function hipochallenge:main_sec 1s

# update team text displays
function hipochallenge:msg/debug/msg_info {msg:"Updating text displays..."}
function hipochallenge:teams/text_displays/update_st with storage minecraft:hipochallenge
