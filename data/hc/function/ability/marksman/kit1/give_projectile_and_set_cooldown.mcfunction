#>hc:ability/marksman/kit1/give_projectile_and_set_cooldown
#
# Tries to give a new projectile, and sets the next cooldown if more can be
# given in the future.
#
# @context player

## get projectile
# loot arrow
loot give @s loot hc:class/marksman/item/kit1/arrow

# play fx
execute at @s \
    run \
    function hc.core:fx/ability/marksman/projectile_given

## get new cooldown
# create local scoreboard
scoreboard objectives add __hc.NewProjectile dummy

# get max amount of arrows the player can have
execute store result score hc:max __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    kits[{id:1}].marksman_k1_data.arrows.max_amount

# add to max amount if perk 3 is equipped
scoreboard players set hc:added_projectiles __hc.NewProjectile 0

execute if predicate { \
    condition:"minecraft:all_of", \
    terms:[ \
        {condition:"minecraft:reference",name:"hc:class/is_marksman"}, \
        {condition:"minecraft:reference",name:"hc:perk/is_perk3"}, \
    ], \
} \
    store result score hc:added_projectiles __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    perks[{id:3}].marksman_p3_data.added_projectiles

scoreboard players operation \
    hc:max __hc.NewProjectile += hc:added_projectiles __hc.NewProjectile

# get current amount of arrows
execute store result score hc:arrows __hc.NewProjectile \
    run \
    clear @s *[minecraft:custom_data~{"hc:item/id":"hc:marksman/kit1/arrow"}] 0

# give new (smaller) cooldown if player can have more arrows
execute if score \
    hc:arrows __hc.NewProjectile < hc:max __hc.NewProjectile \
    store result score @s hc.MarksmanKit1NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    kits[{id:1}].marksman_k1_data.arrows.new_rest_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
