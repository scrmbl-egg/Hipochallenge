# storage:
    # local_owner_uuid
    # local_enemy_team
    # local_arrow_motion_x
    # local_arrow_motion_y
    # local_arrow_motion_z

# WARNING: use HIGH PERFORMANCE selectors. when low performance selectors are 
# used, the arrows lag mid-air

# we do two checks, one in the current position, and another in the arrow's
# next position. this, while a bit imprecise, allows for more reliable detection
# with such a fast entity

# TODO: change constants

$data modify storage minecraft:hipochallenge local_aabb_cast_params.selector \
    set value "@a[nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team),tag=!dead]"
$data modify storage minecraft:hipochallenge local_aabb_cast_params.dx \
    set value $(RECON_K2_FLARE_ARROW_DETECTION_DX)
$data modify storage minecraft:hipochallenge local_aabb_cast_params.dy \
    set value $(RECON_K2_FLARE_ARROW_DETECTION_DY)
$data modify storage minecraft:hipochallenge local_aabb_cast_params.dz \
    set value $(RECON_K2_FLARE_ARROW_DETECTION_DZ)
data modify storage minecraft:hipochallenge local_aabb_cast_params.cmd \
    set value "scoreboard players set $must_explode local 1"
\

# cast aabb in the center of the arrow
execute \
    at @s \
    run \
    function std:aabb/cast_centered \
    with storage minecraft:hipochallenge local_aabb_cast_params
\

# cast another in front of the arrow
$execute \
    at @s \
    positioned ~$(local_arrow_motion_x) ~$(local_arrow_motion_y) ~$(local_arrow_motion_z) \
    run \
    function std:aabb/cast_centered \
    with storage minecraft:hipochallenge local_aabb_cast_params
\

# free memory
data remove storage minecraft:hipochallenge local_aabb_cast_params
