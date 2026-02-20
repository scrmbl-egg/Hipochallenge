#>hc:ability/class/marksman/kit3/give_projectile_and_set_cooldown
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
execute store result score __$hc_max __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    kits[{id:3}].marksman_k3_data.bullets.max_amount

# if perk 3 is equipped, add "added_projectiles" to max amount
scoreboard players set __$hc_added_projectiles __hc.NewProjectile 0

execute if predicate { \
    condition:"minecraft:all_of", \
    terms:[ \
        {condition:"minecraft:reference",name:"hc:class/is_marksman"}, \
        {condition:"minecraft:reference",name:"hc:perk/is_perk3"}, \
    ], \
} \
    store result score __$hc_added_projectiles __hc.NewProjectile \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    perks[{id:3}].marksman_p3_data.added_projectiles

scoreboard players operation \
    __$hc_max __hc.NewProjectile += __$hc_added_projectiles __hc.NewProjectile

# get current amount of arrows
execute store result score __$hc_bullets __hc.NewProjectile \
    run \
    clear @s *[ \
        minecraft:custom_data~{"hc:item/id":"marksman_k3_bullet"} \
    ] 0

# give new (smaller) cooldown if player can have more arrows
execute if score \
    __$hc_bullets __hc.NewProjectile < __$hc_max __hc.NewProjectile \
    store result score @s hc.MarksmanKit3NewProjectileCooldown \
    run \
    data get storage hc:main consts.\
    classes[{internal_name:"hc:marksman"}].\
    kits[{id:3}].marksman_k3_data.bullets.new_rest_cooldown_ticks

# free memory
scoreboard objectives remove __hc.NewProjectile
