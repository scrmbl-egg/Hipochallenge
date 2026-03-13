#>core_hc:ability/assassin/tick
#
# Tick function for the assassin class abilities.

## kit 1

# clear amulet when hit with it in hand
execute as @a \
    if predicate hc:entity/was_just_damaged \
    if items entity @s weapon.* *[ \
        minecraft:custom_data~{"hc:item/id":"assassin_k1_crystal_amulet"} \
    ] \
    run \
    function core_hc:ability/assassin/kit1/clear_crystal_amulet

## kit 2

## kit 3
