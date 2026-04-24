#>core_hc:trigger/impl/npc_kill_nearest
#
# Trigger for killing the nearest training NPC spawned by the player.
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
                npc_kill_nearest:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                npc_kill_nearest:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s npc_kill_nearest
scoreboard players enable @s npc_kill_nearest

## commands
# setup function parameters
data modify storage hc:temp npc_kill_nearest set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
}
data modify storage hc:temp npc_kill_nearest.owner_uuid set from entity @s UUID

# kill
function core_hc:trigger/impl/npc_kill_nearest/run \
    with storage hc:temp npc_kill_nearest

# free memory
data remove storage hc:temp npc_kill_nearest
