#>hc:ability/marksman/kit1/on_bow_shot
#
# Executes all commands when the player shoots the marksman bow.
#
# @context player

## NOTE:
# This function doesn't use a detection advancement.

# set first new arrow cooldown (don't if in creative mode)
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_enabled \
] \
    store result score @s hc.MarksmanKit1NewProjectileCooldown \
    run \
    compute entity @s \
    integer hc:class/marksman/kit1/first_projectile_cooldown_ticks

# give arrow instantly if proj_cooldown is triggered
execute if entity @s[ \
    gamemode=!creative, \
    predicate=hc:trigger/is_projectile_cooldown_disabled \
] \
    run \
    loot give @s loot hc:class/marksman/item/kit1/arrow
