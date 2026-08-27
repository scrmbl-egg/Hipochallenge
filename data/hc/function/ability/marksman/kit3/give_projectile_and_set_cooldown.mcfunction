#>hc:ability/marksman/kit3/give_projectile_and_set_cooldown
#
# Tries to give a new projectile, and sets the next cooldown if more can be
# given in the future.
#
# @context player

# loot arrow
loot give @s loot hc:class/marksman/item/kit3/bullet

# create local scoreboard
scoreboard objectives add __hc.NewProjectile dummy

# get max amount of arrows the player can have
execute store result score hc:max __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:marksman"}].\
    kits[{id:3}].marksman_k3_data.bullets.max_amount

# if perk 3 is equipped, add "added_projectiles" to max amount
scoreboard players set hc:added_projectiles __hc.NewProjectile 0

execute if predicate { \
    type:"minecraft:all_of", \
    terms:[ \
        "hc:class/is_marksman", \
        "hc:perk/is_perk3", \
    ], \
} \
    store result score hc:added_projectiles __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:marksman"}].\
    perks[{id:3}].marksman_p3_data.added_projectiles

scoreboard players operation \
    hc:max __hc.NewProjectile += hc:added_projectiles __hc.NewProjectile

# get current amount of arrows
execute store result score hc:bullets __hc.NewProjectile \
    run \
    clear @s *[minecraft:custom_data~{"hc:item/id":"hc:marksman/kit3/bullet"}] 0

# give new (smaller) cooldown if player can have more arrows
execute if score \
    hc:bullets __hc.NewProjectile < hc:max __hc.NewProjectile \
    store result score @s hc.MarksmanKit3NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{key:"hc:marksman"}].\
    kits[{id:3}].marksman_k3_data.bullets.new_rest_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
