#>core_hc:trigger/impl/kill_nearby_npc/run
#
# Kills the closest NPC that belongs to the caller with the macro argument
# specifying the necessary UUID.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner of the NPC.

$execute at @s \
    as @n[ \
        type=minecraft:mannequin, \
        tag=hc.TrainingNpc, \
        sort=nearest, \
        nbt={data:{"hc:entity/training_npc":{owner_uuid:$(owner_uuid)}}} \
    ] \
    run \
    function std:entity/kill_self_and_passengers
