#>hc:ability/marksman/kit2/on_crossbow_shot
#
# Executes all commands when the player shoots the marksman crossbow.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/marksman/kit2/used_crossbow

# set new projectile cooldown
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_enabled \
] \
    store result score @s hc.MarksmanKit2NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:marksman"}].\
    kits[{id:2}].marksman_k2_data.arrows.new_first_cooldown_ticks

# give arrow instantly if proj_cooldown is disabled
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_disabled \
] \
    run \
    loot give @s loot hc:class/marksman/item/kit2/arrow
