#>core_hc:trigger/remove_all
#
# Removes all triggers in the datapack.

## BASIC (available at all times)
scoreboard objectives remove list

## PLAZA / LOBBY
scoreboard objectives remove info
scoreboard objectives remove tp_tutorial
scoreboard objectives remove tp_training
scoreboard objectives remove tp_training_cnduit
scoreboard objectives remove tp_training_froggy
scoreboard objectives remove tp_training_sacrif
scoreboard objectives remove tp_training_fctory
scoreboard objectives remove tp_training_derail

## MATCH REQUEST
scoreboard objectives remove request
scoreboard objectives remove cancel
scoreboard objectives remove join
scoreboard objectives remove leave
scoreboard objectives remove start

## TRAINING TOOLS
scoreboard objectives remove exit
scoreboard objectives remove menu
scoreboard objectives remove tank
scoreboard objectives remove marksman
scoreboard objectives remove assassin
scoreboard objectives remove support
scoreboard objectives remove recon
scoreboard objectives remove assault
scoreboard objectives remove k1
scoreboard objectives remove k2
scoreboard objectives remove k3
scoreboard objectives remove p1
scoreboard objectives remove p2
scoreboard objectives remove p3
scoreboard objectives remove npc_tank
scoreboard objectives remove npc_marksman
scoreboard objectives remove npc_assassin
scoreboard objectives remove npc_support
scoreboard objectives remove npc_recon
scoreboard objectives remove npc_assault
scoreboard objectives remove npc_kill_nearest
scoreboard objectives remove npc_kill_all
scoreboard objectives remove see_spawns
scoreboard objectives remove see_dmg
scoreboard objectives remove cd_item
scoreboard objectives remove cd_projectile

## ADMIN
scoreboard objectives remove lv_random
scoreboard objectives remove lv_cnduit
scoreboard objectives remove lv_froggy
scoreboard objectives remove lv_sacrif
scoreboard objectives remove lv_fctory
scoreboard objectives remove lv_derail

## IN-GAME (match players)
scoreboard objectives remove vote_yes
scoreboard objectives remove vote_no

scoreboard objectives remove vote_surrender
scoreboard objectives remove vote_timeout

## IN-GAME (match players, just in-between rounds)
#scoreboard objectives remove vote_yes
#scoreboard objectives remove vote_no
#
#scoreboard objectives remove vote_surrender
#scoreboard objectives remove vote_timeout
#scoreboard objectives remove k1
#scoreboard objectives remove k2
#scoreboard objectives remove k3
#scoreboard objectives remove p1
#scoreboard objectives remove p2
#scoreboard objectives remove p3

## IN-GAME (spectators)
scoreboard objectives remove stop_spectating
