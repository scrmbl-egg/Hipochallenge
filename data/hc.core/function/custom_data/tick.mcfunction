#>hc.core:custom_data/tick
#
# Executes all behavior related to datapack components contained for the
# "minecraft:custom_data" component.

## "hc:item/replace_with"
# replace all items with this component in the hotbar or offhand.
execute as @a[gamemode=!creative] \
    run \
    function hc.core:util/item/replace_all_replaceable_items

## "hc:item/clear_instantly"
# clear items that are marked for instant deletion
clear @a *[minecraft:custom_data~{"hc:item/clear_instantly":{}}]

## "hc:entity/item/no_pickup"
# set 'infinite' pickup delay for marked items
execute as @e[ \
    type=minecraft:item, \
    nbt={ \
        Item:{ \
            components:{ \
                "minecraft:custom_data":{"hc:entity/item/no_pickup":{}}, \
            }, \
        }, \
    }, \
    nbt=!{PickupDelay:32767s} \
] \
    run \
    data merge entity @s {PickupDelay:32767s}
execute as @e[ \
    type=minecraft:item, \
    nbt={ \
        Item:{ \
            components:{ \
                "minecraft:custom_data":{"hc:entity/item/no_pickup":{}}, \
            }, \
        }, \
    }, \
    nbt={PickupDelay:32767s} \
] \
    run \
    data remove entity @s \
    Item.components."minecraft:custom_data"."hc:entity/item/no_pickup"
