#>core_hc:util/item/replace_all_replaceable_items
#
# Replaces all items from the player that have the "hc:item/replace_with"
# custom data components with the specified loot table.
#
# @context player

## NOTE:
# i don't like this approach, but there is really no better alternative.
#
# what happens is, if an item with the "hc:item/replace_with" component is
# found, what is done

data modify storage hc:temp replace_items set value { \
    func_args:{ \
        slot:"", \
        loot_table:"", \
    }, \
}

# hotbar.0
execute if data entity @s \
    Inventory[{Slot:0b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.0"
execute if data entity @s \
    Inventory[{Slot:0b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:0b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:0b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.1
execute if data entity @s \
    Inventory[{Slot:1b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.1"
execute if data entity @s \
    Inventory[{Slot:1b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:1b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:1b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.2
execute if data entity @s \
    Inventory[{Slot:2b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.2"
execute if data entity @s \
    Inventory[{Slot:2b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:2b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:2b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.3
execute if data entity @s \
    Inventory[{Slot:3b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.3"
execute if data entity @s \
    Inventory[{Slot:3b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:3b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:3b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.4
execute if data entity @s \
    Inventory[{Slot:4b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.4"
execute if data entity @s \
    Inventory[{Slot:4b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:4b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:4b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.5
execute if data entity @s \
    Inventory[{Slot:5b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.5"
execute if data entity @s \
    Inventory[{Slot:5b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:5b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:5b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_argsç

# hotbar.6
execute if data entity @s \
    Inventory[{Slot:6b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.6"
execute if data entity @s \
    Inventory[{Slot:6b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:6b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:6b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.7
execute if data entity @s \
    Inventory[{Slot:7b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.7"
execute if data entity @s \
    Inventory[{Slot:7b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:7b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:7b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# hotbar.8
execute if data entity @s \
    Inventory[{Slot:8b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.slot \
    set value "hotbar.8"
execute if data entity @s \
    Inventory[{Slot:8b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    data modify storage hc:temp replace_items.func_args.loot_table \
    set from entity @s \
    Inventory[{Slot:8b}].components.\
    "minecraft:custom_data"."hc:item/replace_with"
execute if data entity @s \
    Inventory[{Slot:8b}].components.\
    "minecraft:custom_data"."hc:item/replace_with" \
    run \
    function core_hc:util/item/replace \
    with storage hc:temp replace_items.func_args

# free memory
data remove storage hc:temp replace_items
