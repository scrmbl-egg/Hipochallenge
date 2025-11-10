#>hc:equipment/equip_items
#
# Equips the items of a class depending on the kit and perk.

# TODO: add support for custom perk behaviour and item equipping

# all options selected guard clause
execute unless predicate hc:has_all_options_selected \
    run \
    function hc:msg/private/send_error/not_all_options_selected

## setup temp data
# get_data_member parameters for getting loot tables
data modify storage hc:temp equip_items.get_kit_loot_tables set value { \
    class_id:0, \
    kit_id:0, \
    member_name:"item_loot_tables", \
    out_storage:"hc:temp", \
    out_nbt:"equip_items.loot_tables", \
}
# get_data_member parameters for getting perk equip command
data modify storage hc:temp equip_items.get_perk_equip_command set value { \
    class_id:0, \
    perk_id:0, \
    member_name:"on_equip_command", \
    out_storage:"hc:temp", \
    out_nbt:"equip_items.on_perk_equip_command.command", \
}

## get player's class (twice), kit & perk
execute store result storage hc:temp equip_items.get_kit_loot_tables.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class
execute store result storage hc:temp equip_items.get_kit_loot_tables.kit_id \
    int 1 \
    run \
    scoreboard players get @s hc.Kit
execute store result \
    storage hc:temp equip_items.get_perk_equip_command.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class
execute store result \
    storage hc:temp equip_items.get_perk_equip_command.perk_id \
    int 1 \
    run \
    scoreboard players get @s hc.Perk

## get loot tables
function core_hc:kit/get_data_member \
    with storage hc:temp equip_items.get_kit_loot_tables

# loot items
function core_hc:equipment/item/loot_items \
    with storage hc:temp equip_items.loot_tables

## get perk equip command
function core_hc:perk/get_data_member \
    with storage hc:temp equip_items.get_perk_equip_command

# run perk equip command
function std:command/run \
    with storage hc:temp equip_items.on_perk_equip_command

# show fx
function core_hc:fx/equipment/equip_items

# free memory
data remove storage hc:temp equip_items
