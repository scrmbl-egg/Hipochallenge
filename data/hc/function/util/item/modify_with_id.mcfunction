#>hc:util/item/modify_with_id
#
# Applies an item modifier to the first item in the player's inventory that
# contains a specific `hc:item/id` component.
#
# @context player
# @input
#   id: #[match_regex="^[a-z0-9_]+(:[a-z0-9_]+)?$"]
#       ID of the item that is going to be modified.
#   modifier: (#[id="item_modifier"] string | ItemModifier)
#       Modifier that is going to be applied to the item.

## NOTE:
# the modifier may be a compound NBT object, but saving it as a string should
# be safe when converting it into a macro.

# fail function if the item doesn't exist in inventory
#
# this predicate helps us catch the entity in every possible slot of the
# player inventory
$execute unless predicate { \
    condition:"minecraft:any_of", \
    terms:[ \
        { \
            condition:"minecraft:entity_properties", \
            entity:"this", \
            predicate:{ \
                slots:{ \
                    "container.*":{ \
                        components:{ \
                            "minecraft:custom_data":{ \
                                "hc:item/id":"$(id)", \
                            }, \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_properties", \
            entity:"this", \
            predicate:{ \
                slots:{ \
                    "player.crafting.*":{ \
                        components:{ \
                            "minecraft:custom_data":{ \
                                "hc:item/id":"$(id)", \
                            }, \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_properties", \
            entity:"this", \
            predicate:{ \
                slots:{ \
                    "armor.*":{ \
                        components:{ \
                            "minecraft:custom_data":{ \
                                "hc:item/id":"$(id)", \
                            }, \
                        }, \
                    }, \
                }, \
            }, \
        }, \
        { \
            condition:"minecraft:entity_properties", \
            entity:"this", \
            predicate:{ \
                slots:{ \
                    "player.cursor":{ \
                        components:{ \
                            "minecraft:custom_data":{ \
                                "hc:item/id":"$(id)", \
                            }, \
                        }, \
                    }, \
                }, \
            }, \
        }, \
    ], \
} \
    run \
    return fail

## save args (-1 is a placeholder value that doesn't match any slot index)
$data modify storage hc:temp modify_item_with_id set value { \
    modify_item_in_container_args:{ \
        index:-1, \
        modifier:"$(modifier)", \
    }, \
}

## get slot index of the item
# (if it stays as -1, the item is either in the player.cursor, weapon.offhand,
# armor.* or player.crafting.* slots)
$execute store result storage \
    hc:temp modify_item_with_id.modify_item_in_container_args.index \
    int 1 \
    if data entity @s Inventory[\
        {components:{"minecraft:custom_data":{"hc:item/id":"$(id)"}}}\
    ] \
    run \
    data get entity @s Inventory[\
        {components:{"minecraft:custom_data":{"hc:item/id":"$(id)"}}}\
    ].Slot

## if the slot was found in the container.* slots, use the helper function
execute unless data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    run \
    function core_hc:util/item/modify_in_container \
    with storage hc:temp modify_item_with_id.modify_item_in_container_args

## otherwise, try each of the leftover slots
# player.cursor
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s player.cursor *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s player.cursor $(modifier)
# weapon.offhand
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s weapon.offhand *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s weapon.offhand $(modifier)
# armor.*
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s armor.head *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s armor.head $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s armor.body *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s armor.body $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s armor.legs *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s armor.legs $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s armor.feet *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s armor.feet $(modifier)
# player.crafting.*
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s player.crafting.0 *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s player.crafting.0 $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s player.crafting.1 *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s player.crafting.1 $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s player.crafting.2 *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s player.crafting.2 $(modifier)
$execute if data storage \
    hc:temp modify_item_with_id.modify_item_in_container_args{index:-1} \
    if items entity @s player.crafting.3 *[ \
        minecraft:custom_data~{"hc:item/id":"$(id)"} \
    ] \
    run \
    item modify entity @s player.crafting.3 $(modifier)

# free memory
data remove storage hc:temp modify_item_with_id
