#>hc:ability/marksman/kit3/on_revolver_used
#
# Executes all commands when the player shoots the marksman revolver.

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit3/used_revolver

# set new projectile cooldown
execute store result score @s hc.MarksmanKit3NewProjectileCooldown \
    run \
    compute entity @s \
    integer hc:class/marksman/kit3/first_projectile_cooldown_ticks
