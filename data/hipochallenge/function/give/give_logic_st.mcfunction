# storage:
    # local_custom_data
    # local_item_slot
    # local_item_modifier
    # TODO: borrar los que no use

scoreboard objectives add local dummy

execute store result score $inventory local run data get storage minecraft:hipochallenge local_item_slot 1

# -106b = weapon.offhand Slot integer value
$execute if score $inventory local matches -106 run item modify entity @s weapon.offhand $(local_item_modifier)

# replace items in detected slot
$execute unless score $inventory local matches 0..35 run item modify entity @s container.$(local_item_slot) $(local_item_modifier)

# if item with custom data is in the player's cursor, replace cursor item (thank god this is possible)
$execute if items entity @s player.cursor *[custom_data={$(custom_data)}] run item modify entity @s player.cursor $(item_modifier)

scoreboard objectives remove local