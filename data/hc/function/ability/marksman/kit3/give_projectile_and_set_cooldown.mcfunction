#>hc:ability/marksman/kit3/give_projectile_and_set_cooldown
#
# Tries to give a new projectile, and sets the next cooldown if more can be
# given in the future.
#
# @context player

## get projectile
# loot arrow
loot give @s loot hc:class/marksman/item/kit3/bullet

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/marksman/projectile_given

## get new cooldown
scoreboard objectives add __hc.NewProjectile dummy

# get max amount of arrows the player can have
# (the number provider handles the perk3 case too)
execute store result score hc:max __hc.NewProjectile \
    run \
    compute entity @s integer hc:class/marksman/kit3/max_projectiles

# get current amount of arrows
execute store result score hc:bullets __hc.NewProjectile \
    run \
    clear @s *[minecraft:custom_data~{"hc:item/id":"hc:marksman/kit3/bullet"}] 0

# give new (smaller) cooldown if player can have more arrows
execute if score hc:bullets __hc.NewProjectile < hc:max __hc.NewProjectile \
    store result score @s hc.MarksmanKit3NewProjectileCooldown \
    run \
    compute entity @s \
    integer hc:class/marksman/kit3/other_projectile_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
