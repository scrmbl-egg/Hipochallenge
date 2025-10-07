#>hc:ability/class/marksman/kit2/on_crossbow_shot
#
# Executes all commands when the player shoots the marksman crossbow.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/marksman/kit2/used_crossbow

# set new projectile cooldown
execute if entity @s[gamemode=!creative] \
    store result score @s hc.MarksmanKit2NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"marksman"}].\
    kits[{id:2}].marksman_k2_data.arrows.new_first_cooldown_ticks
