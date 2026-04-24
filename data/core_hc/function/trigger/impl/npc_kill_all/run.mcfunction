#>core_hc:trigger/impl/npc_kill_all/run
#
# Kills all NPCs that belong to the caller with the macro argument specifying
# the necessary UUID.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner of the NPCs.

$execute as @e[ \
    type=minecraft:mannequin, \
    tag=hc.TrainingNpc, \
    nbt={data:{"hc:entity/training_npc":{owner_uuid:$(owner_uuid)}}} \
] \
    run \
    function std:entity/kill_self_and_passengers
