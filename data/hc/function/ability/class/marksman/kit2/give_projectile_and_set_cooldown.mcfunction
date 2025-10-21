#>hc:ability/class/marksman/kit2/give_projectile_and_set_cooldown
#
# Tries to give a new projectile, and sets the next cooldown if more can be
# given in the future.
#
# @context player

# loot arrow
loot give @s loot hc:class/marksman/item/kit2/arrow

# play fx
execute at @s \
    run \
    function core_hc:fx/ability/marksman/projectile_given

# create local scoreboard
scoreboard objectives add __hc.NewProjectile dummy

# get max amount of arrows the player can have
execute store result score __$hc_max __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"marksman"}].\
    kits[{id:2}].marksman_k2_data.arrows.max_amount

# get current amount of arrows (+1 if charged in crossbow)
execute store result score __$hc_arrows __hc.NewProjectile \
    run \
    clear @s *[ \
        minecraft:custom_data~{"hc:item/id":"marksman_k2_arrow"} \
    ] 0
execute if items entity @s container.* *[ \
    minecraft:custom_data~{"hc:item/id":"marksman_k2_crossbow"}, \
    minecraft:charged_projectiles=[ \
        { \
            id:"minecraft:arrow", \
            components:{ \
                "minecraft:custom_data":{"hc:item/id":"marksman_k2_arrow"}, \
            }, \
        }, \
    ] \
] \
    run \
    scoreboard players add __$hc_arrows __hc.NewProjectile 1

# give new (smaller) cooldown if player can have more arrows
execute if score \
    __$hc_arrows __hc.NewProjectile < __$hc_max __hc.NewProjectile \
    store result score @s hc.MarksmanKit2NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"marksman"}].\
    kits[{id:2}].marksman_k2_data.arrows.new_rest_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
