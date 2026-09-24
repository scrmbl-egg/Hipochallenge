#>hc:ability/marksman/kit2/give_projectile_and_set_cooldown
#
# Tries to give a new projectile, and sets the next cooldown if more can be
# given in the future.
#
# @context player

## get projectile
# loot arrow
loot give @s loot hc:class/marksman/item/kit2/arrow

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/marksman/projectile_given

## get new cooldown
# create local scoreboard
scoreboard objectives add __hc.NewProjectile dummy

# get max amount of arrows the player can have
# (the number provider handles the perk3 case too)
execute store result score hc:max __hc.NewProjectile \
    run \
    compute entity @s integer hc:class/marksman/kit2/max_projectiles

# get current amount of arrows (+1 if charged in crossbow)
execute store result score hc:arrows __hc.NewProjectile \
    run \
    clear @s *[minecraft:custom_data~{"hc:item/id":"hc:marksman/kit2/arrow"}] 0
execute if items entity @s container.* *[ \
    minecraft:custom_data~{"hc:item/id":"hc:marksman/kit2/crossbow"}, \
    minecraft:charged_projectiles=[ \
        { \
            id:"minecraft:arrow", \
            components:{ \
                "minecraft:custom_data":{ \
                    "hc:item/id":"hc:marksman/kit2/arrow", \
                }, \
            }, \
        }, \
    ] \
] \
    run \
    scoreboard players add hc:arrows __hc.NewProjectile 1

# give new (smaller) cooldown if player can have more arrows
execute if score hc:arrows __hc.NewProjectile < hc:max __hc.NewProjectile \
    store result score @s hc.MarksmanKit2NewProjectileCooldown \
    run \
    compute entity @s \
    integer hc:class/marksman/kit2/other_projectile_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
