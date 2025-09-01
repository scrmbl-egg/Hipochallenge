#>core_hc:projectile/class/recon/flare_arrow/tick
#
# Tick function for the recon class flare arrows.
#
# @context minecraft:spectral_arrow

## NOTE:
# In an attempt to optimize these arrows as much as possible, we save the data
# that doesn't need to be processed each tick in the arrow's `data` component.
# Then, when it's needed for functions, we copy specific parts and free them
# later.

## NOTE:
# 'origin', in the context of arrows, is actually the owner... uhhh... thanks
# minecraft!
# - scrmbl-egg

# add custom data to the arrow's data if it hasn't been added before
execute as @s unless data entity @s data.flare_arrow \
    run \
    return run \
    function core_hc:projectile/class/recon/flare_arrow/add_data

# update motion values & cast aabbs
data modify storage hc:temp flare_arrow.motion_x set from entity @s Motion[0]
data modify storage hc:temp flare_arrow.motion_y set from entity @s Motion[1]
data modify storage hc:temp flare_arrow.motion_z set from entity @s Motion[2]

execute as @s at @s \
    run \
    function core_hc:projectile/class/recon/flare_arrow/cast_aabbs \
    with storage hc:temp flare_arrow
#>_
# @out
#   hc:temp data
#       flare_arrow
#           ...
#           explode {} <- ONLY APPEARS WHEN THE AABB CAST SUCCEEDS!!

# if it never finds an enemy, mark explosion directly when arrow hits a surface
execute if entity @s[nbt={shake:1b}] \
    run \
    data modify storage hc:temp flare_arrow.explode set value {}

# if explosion key/data is found, explode with arrow's explosion data
execute if data storage hc:temp flare_arrow.explode \
    run \
    data modify storage hc:temp flare_arrow.explosion \
    set from entity @s data.flare_arrow.explosion
execute if data storage hc:temp flare_arrow.explode \
    run \
    function core_hc:projectile/class/recon/flare_arrow/explode \
    with storage hc:temp flare_arrow.explosion

# free memory
data remove storage hc:temp flare_arrow
