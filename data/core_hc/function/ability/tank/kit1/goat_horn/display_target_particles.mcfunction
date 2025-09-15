#>core_hc:ability/tank/kit1/goat_horn/display_target_particles
#
# Displays the particles on the specified target selector.
#
# @input
#   owner_uuid: #[uuid] int[] @ 4
#       UUID of the owner.
#   team: #[team] string
#       Team that is going to be detected.
#   radius: double @ 0..
#       Radius of the sphere in which the player is going to apply effects.
#   player_limit: int @ 0..
#       Limit of players to be detected.

$execute as @a[ \
        nbt=!{UUID:$(owner_uuid)}, \
        limit=$(player_limit), \
        distance=..$(radius), \
        team=$(team) \
    ] \
    at @s \
    run \
    function core_hc:fx/ability/tank/kit1/target { \
        owner_uuid:$(owner_uuid), \
    }

$say execute as @a[nbt=!{UUID:$(owner_uuid)},limit=$(player_limit),distance=..$(radius),team=$(team)] at @s run function core_hc:fx/ability/tank/kit1/target {owner_uuid:$(owner_uuid),}
