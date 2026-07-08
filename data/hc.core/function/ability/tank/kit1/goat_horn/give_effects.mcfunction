#>hc.core:ability/tank/kit1/goat_horn/give_effects
#
# Gives the effects of the correspondent goat horn.
#
# @context player
# @input
#   team: #[team] string
#       Team that is going to be detected.
#   radius: double @ 0..
#       Radius of the sphere in which the player is going to apply effects.

# give ability effects
$execute as @e[ \
    type=#hc:player_like, \
    limit=6, \
    distance=..$(radius), \
    team=$(team) \
] \
    run \
    function hc:util/effect/give_ability_effects \
    with storage hc:main \
    consts.classes[{internal_name:"hc:tank"}].\
    kits[{id:1}].tank_k1_data.horn.effects_info
