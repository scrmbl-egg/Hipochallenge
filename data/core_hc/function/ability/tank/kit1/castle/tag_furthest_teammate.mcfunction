#>core_hc:ability/tank/kit1/castle/tag_furthest_teammate
#
# Tags the furthest teammate.
#
# @context castling player
# @input
#   team: #[team] string
#       Team of the teammate who is going to be tagged.
#   tag: #[tag] string
#       Tag that is going to be added to the teammate.
# @writes
#   Furthest teammate's UUID in specified location

$execute as @e[ \
    type=#hc:player_like, \
    team=$(team), \
    limit=1, \
    distance=0.., \
    sort=furthest, \
    tag=!hc.Dead \
] \
    run \
    tag @s add $(tag)
