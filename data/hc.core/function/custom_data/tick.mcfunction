#>hc.core:custom_data/tick
#
# Executes all behavior related to datapack components contained for the
# "minecraft:custom_data" component.

## "hc:item/replace_with"
# replace all items with this component in the hotbar or offhand.
#
# NOTE:
# Yes, we must use a dumbass schedule command here because as of version 26.3,
# trying to replace the item with a loot table in the same tick results in a
# bugged item.
#
# -scrmbl-egg
execute as @a[gamemode=!creative] \
    if items entity @s { \
        type:"minecraft:group", \
        terms:[ \
            {type:"minecraft:slot_range",slots:"hotbar.*"}, \
            {type:"minecraft:slot_range",slots:"weapon.offhand"}, \
        ], \
    } *[ \
        minecraft:custom_data~{"hc:item/replace_with":{}} \
    ] \
    run \
    schedule \
    function hc.core:util/item/replace_all_items_from_players 1t append


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
