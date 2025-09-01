#>core_hc:projectile/class/recon/flare_arrow/cast_aabbs
#
# Casts the axis-aligned bounding boxes for detecting enemy players. Motion of
# the spectral arrow is needed, in order to cast another AABB wherever the
# arrow is going to go next to prevent unwanted hits, and always make it
# explode before it touches a detected entity.
#
# @context minecraft:spectral_arrow
# @input
#   motion_x: double
#       X motion of the arrow, used for offsetting a second AABB cast, which
#       is used for predicting the arrow's motion, and preventing unwanted hits.
#   motion_y: double
#       Y motion of the arrow, used for offsetting a second AABB cast, which
#       is used for predicting the arrow's motion, and preventing unwanted hits.
#   motion_z: double
#       Z motion of the arrow, used for offsetting a second AABB cast, which
#       is used for predicting the arrow's motion, and preventing unwanted hits.

# copy aabb_params into storage to use as function parameters
data modify storage hc:temp flare_arrow_aabb_params \
    set from entity @s data.flare_arrow.aabb_params

# cast one in current position, and in next position
execute at @s \
    run \
    function std:aabb/cast_centered \
    with storage hc:temp flare_arrow_aabb_params
$execute at @s \
    positioned ~$(motion_x) ~$(motion_y) ~$(motion_z) \
    run \
    function std:aabb/cast_centered \
    with storage hc:temp flare_arrow_aabb_params

#>_
# @out
#   minecraft:spectral_arrow data
#       flare_arrow
#           explode <- ONLY APPEARS WHEN THE AABB CAST SUCCEEDS!!

# free memory
data remove storage hc:temp flare_arrow_aabb_params
