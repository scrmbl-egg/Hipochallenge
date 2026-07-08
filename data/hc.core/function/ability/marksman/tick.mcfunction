#>hc.core:ability/marksman/tick
#
# Tick function for the marksman class abilities.

## kit 1

# bow (shot bow detection must be done here since there is no advancement)
execute as @a[scores={hc.BowShot=1..}] \
    if items entity @s weapon.* *[ \
        minecraft:custom_data~{"hc:item/id":"hc:marksman/kit1/bow"} \
    ] \
    run \
    function hc:ability/marksman/kit1/on_bow_shot

# arrows
execute as @a[ \
    scores={hc.MarksmanKit1NewProjectileCooldown=0} \
] \
    run \
    function hc:ability/marksman/kit1/give_projectile_and_set_cooldown

## kit 2

# arrows
execute as @a[ \
    scores={hc.MarksmanKit2NewProjectileCooldown=0} \
] \
    run \
    function hc:ability/marksman/kit2/give_projectile_and_set_cooldown

## kit 3

# bullets
execute as @a[ \
    scores={hc.MarksmanKit3NewProjectileCooldown=0} \
] \
    run \
    function hc:ability/marksman/kit3/give_projectile_and_set_cooldown
