# params:
    # custom_data
    # item_modifier

$data modify storage minecraft:hipochallenge local_custom_data set value $(custom_data)
$data modify storage minecraft:hipochallenge local_item_slot set from entity @s Inventory[{components:{"minecraft:custom_data":$(custom_data)}}].Slot
$data modify storage minecraft:hipochallenge local_item_modifier set value "$(item_modifier)"

function hipochallenge:replace_item/replace_logic_st with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_custom_data
data remove storage minecraft:hipochallenge local_item_slot
data remove storage minecraft:hipochallenge local_item_modifier

execute at @s run playsound minecraft:block.vault.eject_item master @s ~ ~ ~ 1 1