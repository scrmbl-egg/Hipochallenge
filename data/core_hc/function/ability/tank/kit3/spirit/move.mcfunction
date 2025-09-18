#>core_hc:ability/tank/kit3/spirit/move
#
# Moves the spirit towards its goal and aligns its rotation
#
# @context minecraft:allay
# @input
#   goal_uuid: #[uuid] int[] @ 4
#       UUID of the spirit's goal.

# move spirit towards goal
$execute at @s run tp @s ~ ~ ~ facing entity @n[nbt={UUID:$(goal_uuid)},type=marker]

$execute at @s if entity @n[nbt={UUID:$(goal_uuid)},type=marker,distance=0.25..1] \
    run \
    tp @s ^ ^ ^0.15
$execute at @s if entity @n[nbt={UUID:$(goal_uuid)},type=marker,distance=1..5] \
    run \
    tp @s ^ ^ ^0.5
$execute at @s if entity @n[nbt={UUID:$(goal_uuid)},type=marker,distance=5..50] \
    run \
    tp @s ^ ^ ^1
$execute at @s if entity @n[nbt={UUID:$(goal_uuid)},type=marker,distance=50..] \
    run \
    tp @s ^ ^ ^5


# align spirit rotation to target player
$execute as @s at @s if entity @n[nbt={UUID:$(target_uuid)},type=marker,distance=0..1] \
    run \
    function core_hc:ability/tank/kit3/spirit/align with entity @s data."hc:spirit"

# Remove existing goal markers
$execute at @s as @e[nbt={UUID:$(goal_uuid)},type=marker,limit=2,sort=nearest] \
    run \
    function std:entity/kill_self_and_passengers
