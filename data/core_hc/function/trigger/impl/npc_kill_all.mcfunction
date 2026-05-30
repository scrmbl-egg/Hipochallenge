#>core_hc:trigger/impl/npc_kill_all
#
# Trigger for killing all the training NPC spawned by the player.
#
# @context player

## execution guard
# prevent disabling if player types `/trigger ... set 0`
execute if score @s npc_kill_all matches 0 \
    run \
    scoreboard players enable @s npc_kill_all

# don't run anything if it's 0 or uninitialized
execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                npc_kill_all:{min:-2147483648,max:-1}, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_scores", \
            entity:"this", \
            scores:{ \
                npc_kill_all:{min:1,max:2147483647}, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

# reset and re-enable
scoreboard players reset @s npc_kill_all
scoreboard players enable @s npc_kill_all

## commands
# setup function parameters
data modify storage hc:temp npc_kill_all set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
}
data modify storage hc:temp npc_kill_all.owner_uuid set from entity @s UUID

# kill
function core_hc:trigger/impl/npc_kill_all/run \
    with storage hc:temp npc_kill_all

# free memory
data remove storage hc:temp npc_kill_all
