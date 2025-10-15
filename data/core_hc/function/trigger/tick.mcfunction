#>core_hc:trigger/tick
#
# Checks if the trigger scoreboards are triggered, and executes their assigned
# procedures / functions.

## info
execute as @a \
    if predicate core_hc:trigger/triggered_info \
    run \
    function core_hc:trigger/info

## ls
execute as @a \
    if predicate core_hc:trigger/triggered_ls \
    run \
    function core_hc:trigger/ls


## proj_cooldown
execute as @a \
    if predicate core_hc:trigger/triggered_proj_cooldown \
    run \
    function core_hc:trigger/proj_cooldown
