#>core_hc:trigger/kill_nearby_npc
#
# Trigger for killing the nearest training NPC spawned by the player.
#
# @context player
# @input
#   UUID: #[uuid] int[] @ 4
#       UUID of the player that executes the function. Directly taken from the
#       player's data.

# kill
$execute at @s \
    as @n[ \
        type=minecraft:mannequin, \
        tag=hc.TrainingNpc, \
        sort=nearest, \
        nbt={data:{"hc:entity/training_npc":{owner_uuid:$(UUID)}}} \
    ] \
    run \
    function std:entity/kill_self_and_passengers

# reset and re-enable
scoreboard players reset @a kill_nearby_npc
scoreboard players enable @a kill_nearby_npc
