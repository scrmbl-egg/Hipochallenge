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
    if predicate core_hc:trigger/is_proj_cooldown_enabled \
    store result score @s hc.MarksmanKit2NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"marksman"}].\
    kits[{id:2}].marksman_k2_data.arrows.new_first_cooldown_ticks

# give arrow instantly if proj_cooldown is disabled
execute if entity @s[gamemode=!creative] \
    unless predicate core_hc:trigger/is_proj_cooldown_enabled \
    run \
    loot give @s loot hc:class/marksman/item/kit2/arrow
