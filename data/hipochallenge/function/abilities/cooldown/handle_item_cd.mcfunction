# params:
    # item_id
    # cd_item_modifier
    # cd_score
    # cd_const

# create local score
scoreboard objectives add local dummy

# set score to cooldown constant
$execute store result score $has_cd local run data get storage hipochallenge $(cd_const)

# check hand item_id's, and if the cooldown is not -1 (infinite), apply cd_item_modifier and set
# player's cd_score
$execute if score $has_cd local matches ..-1 run clear @s *[custom_data={item_id:$(item_id)}] 1
$execute if score $has_cd local matches 0.. if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{item_id:$(item_id)}}}]}] run item modify entity @s weapon.offhand $(cd_item_modifier)
$execute if score $has_cd local matches 0.. if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{item_id:$(item_id)}}}}] run item modify entity @s weapon.mainhand $(cd_item_modifier)
$execute if score $has_cd local matches 0.. store result score @s $(cd_score) run data get storage minecraft:hipochallenge $(cd_const)

# remove score
scoreboard objectives remove local