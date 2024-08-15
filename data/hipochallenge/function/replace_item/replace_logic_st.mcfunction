# storage:
    # local_custom_data
    # local_item_slot
    # local_item_modifier

scoreboard objectives add local dummy

execute store result score $inventory local run data get storage minecraft:hipochallenge local_item_slot 1

# -106b = weapon.offhand Slot integer value
$execute if score $inventory local matches -106 run item modify entity @s weapon.offhand $(local_item_modifier)

# replace items in detected slot (must be wrapped in a function because macro could give an error if local_item_slot = -106)
execute if score $inventory local matches 0..35 run function hipochallenge:replace_item/replace_inventory_st with storage minecraft:hipochallenge

# if item with custom data is in the player's cursor, replace cursor item (thank god this is possible)
$execute if items entity @s player.cursor *[custom_data=$(local_custom_data)] run item modify entity @s player.cursor $(local_item_modifier)

scoreboard objectives remove local