#>hc:ability/marksman/kit3/on_revolver_used
#
# Executes all commands when the player shoots the marksman revolver.

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit3/used_revolver

# set new projectile cooldown
execute store result score @s hc.MarksmanKit3NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    kits[{id:3}].marksman_k3_data.bullets.new_first_cooldown_ticks
