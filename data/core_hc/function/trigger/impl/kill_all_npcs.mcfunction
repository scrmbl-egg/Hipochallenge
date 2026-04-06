#>core_hc:trigger/impl/kill_all_npcs
#
# Trigger for killing all the training NPC spawned by the player.
#
# @context player
# @input
#   UUID: #[uuid] int[] @ 4
#       UUID of the player that executes the function. Directly taken from the
#       player's data.

## execution guard
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                kill_all_npcs:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                kill_all_npcs:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s kill_all_npcs
scoreboard players enable @s kill_all_npcs

## commands
# setup function parameters
data modify storage hc:temp kill_all_npcs set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
}
data modify storage hc:temp kill_all_npcs.owner_uuid set from entity @s UUID

# kill
function core_hc:trigger/impl/kill_all_npcs/run \
    with storage hc:temp kill_all_npcs

# free memory
data remove storage hc:temp kill_all_npcs
