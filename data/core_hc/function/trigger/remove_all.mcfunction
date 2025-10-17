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
scoreboard objectives remove accept
scoreboard objectives remove leave

## TRAINING TOOLS
scoreboard objectives remove warp_plaza
scoreboard objectives remove training_gui
scoreboard objectives remove cl_tank
scoreboard objectives remove cl_marksman
scoreboard objectives remove cl_assassin
scoreboard objectives remove cl_support
scoreboard objectives remove cl_recon
scoreboard objectives remove cl_assault
scoreboard objectives remove kt_1
scoreboard objectives remove kt_2
scoreboard objectives remove kt_3
scoreboard objectives remove pk_1
scoreboard objectives remove pk_2
scoreboard objectives remove pk_3
scoreboard objectives remove spawn_dummy_tank
scoreboard objectives remove spawn_dummy_marksman
scoreboard objectives remove spawn_dummy_assassin
scoreboard objectives remove spawn_dummy_support
scoreboard objectives remove spawn_dummy_recon
scoreboard objectives remove spawn_dummy_assault
scoreboard objectives remove kill_nearby_dummy
scoreboard objectives remove kill_all_dummies
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
#scoreboard objectives remove kt_1
#scoreboard objectives remove kt_2
#scoreboard objectives remove kt_3
#scoreboard objectives remove pk_1
#scoreboard objectives remove pk_2
#scoreboard objectives remove pk_3

## IN-GAME (spectators)
scoreboard objectives remove stop_spectating
