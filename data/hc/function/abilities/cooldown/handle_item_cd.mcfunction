# params:
    # item_id
    # cd_score

# NOTE: this function takes the item's cooldown seconds and turns them into 
# score for cooldown. This is used to sidestep the game's bug where the item
# disappears when trying to modify it after being consumed.

# mainhand item case
$execute if items entity @s weapon.mainhand *[custom_data={item_id:$(item_id)}] run execute store result score @s $(cd_score) run data get entity @s SelectedItem.components."minecraft:use_cooldown".seconds 20

# offhand item case
$execute if items entity @s weapon.offhand *[custom_data={item_id:$(item_id)}] run execute store result score @s $(cd_score) run data get entity @s Inventory[{Slot:-106b}].components."!minecraft:use_cooldown".seconds 20