#>core_hc:ability/marksman/tick
#
# Tick function for the marksman class abilities.

## kit 1

# bow (shot bow detection must be done here since there is no advancement)
execute as @a[scores={hc.BowShot=1..}] \
    if items entity @s weapon.* *[\
        minecraft:custom_data={"hc:item_id":"marksman_k1_bow"}\
    ] \
    run \
    function hc:ability/class/marksman/kit1/on_bow_shot

# TODO: move this to another function
execute as @a[scores={hc.BowShot=1..}] \
    run \
    scoreboard players set @s hc.BowShot 0

# arrows (give even if in creative mode)
execute as @a[ \
    scores={hc.MarksmanKit1NewProjectileCooldown=1} \
] \
    run \
    function hc:ability/class/marksman/kit1/give_projectile_and_set_cooldown

## kit 2

# arrows
execute as @a[ \
    scores={hc.MarksmanKit2NewProjectileCooldown=1} \
] \
    run \
    function hc:ability/class/marksman/kit2/give_projectile_and_set_cooldown

## kit 3

# bullets
execute as @a[ \
    scores={hc.MarksmanKit3NewProjectileCooldown=1} \
] \
    run \
    function hc:ability/class/marksman/kit3/give_projectile_and_set_cooldown
