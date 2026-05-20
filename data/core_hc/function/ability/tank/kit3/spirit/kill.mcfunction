#>core_hc:ability/tank/kit3/spirit/kill
#
# Kills all spirits whose owner is the player executing this function.
#
# @context player
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner of the spirit(s) to kill.

$execute as @e[ \
    type=minecraft:allay, \
    nbt={data:{"hc:entity/spirit":{owner_uuid:$(owner_uuid)}} \
] \
    run \
    function std:entity/kill_self_and_passengers
