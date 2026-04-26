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
#
# - scrmbl-egg

## BASIC (available at all times)
scoreboard objectives add list trigger

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
scoreboard objectives add request trigger
scoreboard objectives add cancel trigger
scoreboard objectives add join trigger
scoreboard objectives add leave trigger
scoreboard objectives add start trigger

## TRAINING TOOLS
scoreboard objectives add warp_plaza trigger
scoreboard objectives add menu trigger
scoreboard objectives add tank trigger
scoreboard objectives add marksman trigger
scoreboard objectives add assassin trigger
scoreboard objectives add support trigger
scoreboard objectives add recon trigger
scoreboard objectives add assault trigger
scoreboard objectives add k1 trigger
scoreboard objectives add k2 trigger
scoreboard objectives add k3 trigger
scoreboard objectives add p1 trigger
scoreboard objectives add p2 trigger
scoreboard objectives add p3 trigger
scoreboard objectives add npc_tank trigger
scoreboard objectives add npc_marksman trigger
scoreboard objectives add npc_assassin trigger
scoreboard objectives add npc_support trigger
scoreboard objectives add npc_recon trigger
scoreboard objectives add npc_assault trigger
scoreboard objectives add npc_kill_nearest trigger
scoreboard objectives add npc_kill_all trigger
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
#scoreboard objectives add k1 trigger
#scoreboard objectives add k2 trigger
#scoreboard objectives add k3 trigger
#scoreboard objectives add p1 trigger
#scoreboard objectives add p2 trigger
#scoreboard objectives add p3 trigger

## IN-GAME (spectators)
scoreboard objectives add stop_spectating trigger

## ENABLE TRIGGERS THAT ARE ALWAYS AVAILABLE
scoreboard players enable @s list

# return 1 for success
return 1
