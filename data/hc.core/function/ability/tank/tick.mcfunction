#>hc.core:ability/tank/tick
#
# Tick function for the tank class abilities.

## kit 1
# goat horn targets
execute as @a \
    at @s \
    if items entity @s weapon.* *[ \
        minecraft:custom_data~{"hc:item/id":"hc:tank/kit1/goat_horn"} \
    ] \
    run \
    function hc.core:ability/tank/kit1/goat_horn/show_targets

## kit 2
# trident
execute as @a[scores={hc.TankKit2TridentCooldown=0}] \
    run \
    function hc:ability/tank/kit2/give_trident

# goat horn
# TODO: handle tank kit 2 goat horn cooldown
# TODO: play sounds depending on the amount of recovery ticks

## kit 3
# spirit
# TODO: handle spirit behaviour
execute as @e[type=minecraft:allay,tag=hc.TankKit3Spirit] \
    run \
    function hc.core:ability/tank/kit3/spirit/tick

# bubble shield
# TODO: handle bubble shield tick

## perk 1
# nutritious meal
execute as @a[scores={hc.TankPerk1NutritiousMealCooldown=0}] \
    run \
    function hc:ability/tank/perk1/give_nutritious_meal

## perk 2
#function hc.core:ability/tank/perk2/on_damaged_by_tank_perk2



# HACK: this next tag is used for the advancement detection (see
# hc.core:class/tank/perk2/damaged_by_tank_perk2) because the
# `minecraft:entity_hurt_player` trigger doesn't allow to check a list of
# predicates of the damaging entity, and thus, only allows for nbt checking,
# which means only tags are accessible, unlike in the
# `minecraft:player_hurt_entity` trigger, which allows the entity to be checked
# with a list of predicates.
#
# https://img.bgstatic.com/multiLang/web/605120c4719cc92a226e9ac6f3049631.jpg
#
# Thanks minecraft! :'''D
#
# - scrmbl-egg

# give or remove secret tag for tank and perk 2. the performance of these is
# garbage (in theory)
#execute as @e[ \
    tag=!__hc.IsTankPerk2, \
    predicate=hc:class/is_tank, \
    predicate=hc:perk/is_perk2 \
] \
    run \
    tag @s add __hc.IsTankPerk2
#execute as @e[ \
    type=#hc:player_like, \
    tag=__hc.IsTankPerk2 \
] \
    unless predicate { \
        type:"minecraft:all_of", \
        terms:[ \
            "hc:class/is_tank", \
            "hc:perk/is_perk2", \
        ], \
    } \
    run \
    tag @s remove __hc.IsTankPerk2

## perk 3
