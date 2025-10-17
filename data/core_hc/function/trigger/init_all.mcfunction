#>core_hc:trigger/init_all
#
# Initialises all trigger scores in the datapack.
#
# @returns
#   Result: 1 if all triggers are initialised.

## NOTE:
# - Triggers don't have the "hc." prefix. This is so that they can be typed with
# ease for users.
# - If trigger definitions are commented in a region, it means that even if they
# have been defined before, they should be included in the context the region
# references.

## BASIC (available at all times)
scoreboard objectives add ls trigger

## PLAZA / LOBBY
scoreboard objectives add info trigger
scoreboard objectives add warp_tutorial trigger
scoreboard objectives add warp_training trigger
scoreboard objectives add warp_training_subdec trigger
scoreboard objectives add warp_training_frggy2 trigger
scoreboard objectives add warp_training_sacrf2 trigger
scoreboard objectives add warp_training_vilfac trigger
scoreboard objectives add warp_training_ctrain trigger

## MATCH REQUEST
scoreboard objectives add accept trigger
scoreboard objectives add leave trigger

## TRAINING TOOLS
scoreboard objectives add warp_plaza trigger
scoreboard objectives add training_gui trigger
scoreboard objectives add cl_tank trigger
scoreboard objectives add cl_marksman trigger
scoreboard objectives add cl_assassin trigger
scoreboard objectives add cl_support trigger
scoreboard objectives add cl_recon trigger
scoreboard objectives add cl_assault trigger
scoreboard objectives add kt_1 trigger
scoreboard objectives add kt_2 trigger
scoreboard objectives add kt_3 trigger
scoreboard objectives add pk_1 trigger
scoreboard objectives add pk_2 trigger
scoreboard objectives add pk_3 trigger
scoreboard objectives add spawn_dummy_tank trigger
scoreboard objectives add spawn_dummy_marksman trigger
scoreboard objectives add spawn_dummy_assassin trigger
scoreboard objectives add spawn_dummy_support trigger
scoreboard objectives add spawn_dummy_recon trigger
scoreboard objectives add spawn_dummy_assault trigger
scoreboard objectives add kill_nearby_dummy trigger
scoreboard objectives add kill_all_dummies trigger
scoreboard objectives add see_spawns trigger
scoreboard objectives add see_dmg trigger
scoreboard objectives add item_cooldown trigger
scoreboard objectives add proj_cooldown trigger

## ADMIN
scoreboard objectives add lv_random trigger
scoreboard objectives add lv_subdec trigger
scoreboard objectives add lv_frggy2 trigger
scoreboard objectives add lv_sacrf2 trigger
scoreboard objectives add lv_vilfac trigger
scoreboard objectives add lv_ctrain trigger

## IN-GAME (match players)
scoreboard objectives add vote_yes trigger
scoreboard objectives add vote_no trigger

scoreboard objectives add vote_surrender trigger
scoreboard objectives add vote_timeout trigger

## IN-GAME (match players, just in-between rounds)
#scoreboard objectives add vote_yes trigger
#scoreboard objectives add vote_no trigger
#
#scoreboard objectives add vote_surrender trigger
#scoreboard objectives add vote_timeout trigger
#scoreboard objectives add kt_1 trigger
#scoreboard objectives add kt_2 trigger
#scoreboard objectives add kt_3 trigger
#scoreboard objectives add pk_1 trigger
#scoreboard objectives add pk_2 trigger
#scoreboard objectives add pk_3 trigger

## IN-GAME (spectators)
scoreboard objectives add stop_spectating trigger

# return 1 for success
return 1
