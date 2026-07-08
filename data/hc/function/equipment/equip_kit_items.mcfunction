#>hc:equipment/equip_kit_items
#
# Equips the items of the currently selected kit.

# all options selected guard clause
execute unless predicate hc:util/has_all_options_selected \
    run \
    function hc:msg/private/send_error/not_all_options_selected

# setup temp data
data modify storage hc:temp equip_items set value { \
    loot_items_args:{}, \
    run_command_args:{command:""}, \
}

# get loot tables and loot
function hc:kit/get_data_field { \
    field:"item_loot_tables", \
    out_storage:"hc:temp", \
    out_nbt:"equip_items.loot_items_args", \
}
function hc.core:equipment/item/loot_items \
    with storage hc:temp equip_items.loot_items_args

# show fx
function hc.core:fx/equipment/equip_items

## GIVE TRAINING TOOLS IF PLAYERS ARE IN hc.Neutral
execute if entity @s[team=hc.Neutral] \
    run \
    loot give @s loot hc.core:training/tools

# free memory
data remove storage hc:temp equip_items
