#>hc.core:ability/tank/kit3/spirit/summon_goal
#
# Summons a marker to indicate the spirit's goal position.
#
# @context minecraft:allay
# @input
#   target_uuid: #[uuid] int[] @ 4
#       UUID of the spirit's target.

# summon goal marker
$execute as @p[nbt={UUID:$(target_uuid)}] \
    at @s \
    positioned ~ ~1.75 ~ \
    positioned ^-0.5 ^0.5 ^-1 \
    run \
    summon minecraft:marker ~ ~ ~ { \
        Tags:["hc.TankKit3SpiritGoal","hc.KillOnRoundEnd"], \
    }

# store uuid in spirit data
data modify entity @s data."hc:entity/spirit".goal_uuid \
    set from entity @n[tag=hc.TankKit3SpiritGoal,type=minecraft:marker] UUID
