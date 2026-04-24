#>core_hc:trigger/remove_all
#
# Removes all triggers in the datapack.

## BASIC (available at all times)
scoreboard objectives remove ls

## PLAZA / LOBBY
scoreboard objectives remove info
scoreboard objectives remove warp_tutorial
scoreboard objectives remove warp_training
scoreboard objectives remove warp_training_subdec
scoreboard objectives remove warp_training_frggy2
scoreboard objectives remove warp_training_sacrf2
scoreboard objectives remove warp_training_vilfac
scoreboard objectives remove warp_training_ctrain

## MATCH REQUEST
scoreboard objectives remove request
scoreboard objectives remove cancel
scoreboard objectives remove join
scoreboard objectives remove leave
scoreboard objectives remove start

## TRAINING TOOLS
scoreboard objectives remove warp_plaza
scoreboard objectives remove training_gui
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
scoreboard objectives remove kill_nearby_npc
scoreboard objectives remove kill_all_npcs
scoreboard objectives remove see_spawns
scoreboard objectives remove see_dmg
scoreboard objectives remove item_cooldown
scoreboard objectives remove proj_cooldown

## ADMIN
scoreboard objectives remove lv_random
scoreboard objectives remove lv_subdec
scoreboard objectives remove lv_frggy2
scoreboard objectives remove lv_sacrf2
scoreboard objectives remove lv_vilfac
scoreboard objectives remove lv_ctrain

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
