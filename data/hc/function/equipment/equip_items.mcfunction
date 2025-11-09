#>hc:equipment/equip_items
#
# Equips the items of a class depending on the kit and perk.

# TODO: add support for custom perk behaviour and item equipping

# all options selected guard clause
execute unless predicate hc:has_all_options_selected \
    run \
    function hc:msg/private/send_error/not_all_options_selected

# get_data_member parameters
data modify storage hc:temp equip_items.get_kit_loot_tables set value { \
    class_id:0, \
    kit_id:0, \
    member_name:"item_loot_tables", \
    out_storage:"hc:temp", \
    out_nbt:"equip_items.loot_tables", \
}

# get player's class and kit
execute store result storage hc:temp equip_items.get_kit_loot_tables.class_id \
    int 1 \
    run \
    scoreboard players get @s hc.Class
execute store result storage hc:temp equip_items.get_kit_loot_tables.kit_id \
    int 1 \
    run \
    scoreboard players get @s hc.Kit

# get loot tables
function core_hc:kit/get_data_member \
    with storage hc:temp equip_items.get_kit_loot_tables

# loot items
function core_hc:equipment/item/loot_items \
    with storage hc:temp equip_items.loot_tables

# show fx
function core_hc:fx/equipment/equip_items

# free memory
data remove storage hc:temp equip_items
