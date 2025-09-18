#>core_hc:ability/tank/kit3/spirit/align
#
# Aligns the spirit's rotation to its target's rotation.
#
# @context minecraft:allay
# @input
#   target_uuid: #[uuid] int[] @ 4
#       UUID of the spirit's target.

$data modify entity @s Rotation set from \
    entity @p[nbt={UUID:$(target_uuid)}] Rotation
