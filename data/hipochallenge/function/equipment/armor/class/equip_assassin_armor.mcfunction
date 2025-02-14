# params: 
    # armor_color
    # trim_material

# attributes
function hipochallenge:attributes/class/base/set_assassin_attributes

# head
$item replace entity @s armor.head with leather_helmet[dyed_color={rgb:$(armor_color),show_in_tooltip:false},trim={material:"$(trim_material)",pattern:"tide",show_in_tooltip:false}] 1

# chest
$item replace entity @s armor.chest with chainmail_chestplate[trim={material:"$(trim_material)",pattern:"tide",show_in_tooltip:false}] 1

# legs
$item replace entity @s armor.legs with leather_leggings[dyed_color={rgb:$(armor_color),show_in_tooltip:false}] 1

# feet
item replace entity @s armor.feet with air

# modify all possible armor items
item modify entity @s armor.head hipochallenge:armor/generic
item modify entity @s armor.chest hipochallenge:armor/generic
item modify entity @s armor.legs hipochallenge:armor/generic
item modify entity @s armor.feet hipochallenge:armor/generic
