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

# add custom data to the arrow's data if it hasn't been added before
execute as @s unless data entity @s data."hc:entity/flare_arrow" \
    run \
    return run \
    function core_hc:projectile/class/recon/flare_arrow/add_data

# cast aabb
execute at @s \
    run \
    function std:aabb/cast_centered \
    with entity @s data."hc:entity/flare_arrow".aabb_params
#>_
# @out
#   hc:temp data
#       flare_arrow
#           ...
#           explode {} <- ONLY APPEARS WHEN THE AABB CAST SUCCEEDS!!

# if it never finds an enemy, mark explosion directly when arrow hits a surface
data modify storage hc:temp flare_arrow.on_detection_command \
    set from entity @s \
    data."hc:entity/flare_arrow".aabb_params.on_detection_command

execute if entity @s[nbt={shake:1b}] \
    run \
    function std:command/run_from_nbt { \
        command_storage:"hc:temp", \
        command_nbt:"flare_arrow.on_detection_command", \
    }

# if explosion key/data is found, explode with arrow's explosion data
execute if data storage hc:temp flare_arrow.explode \
    run \
    function core_hc:projectile/class/recon/flare_arrow/explode \
    with entity @s data."hc:entity/flare_arrow".explosion

# free memory
data remove storage hc:temp flare_arrow
