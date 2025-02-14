# params: 
    # trim_material
    # armor_color

# attributes
function hipochallenge:attributes/class/base/set_tank_attributes

# head
$item replace entity @s armor.head with leather_helmet[dyed_color={rgb:$(armor_color),show_in_tooltip:false},trim={material:"netherite",pattern:"spire",show_in_tooltip:false}] 1

# chest
$item replace entity @s armor.chest with netherite_chestplate[trim={material:"$(trim_material)",pattern:"vex",show_in_tooltip:false}] 1

# legs
$item replace entity @s armor.legs with netherite_leggings[trim={material:"$(trim_material)",pattern:"vex",show_in_tooltip:false}] 1

# feet
$item replace entity @s armor.feet with leather_boots[dyed_color={rgb:$(armor_color),show_in_tooltip:false},trim={material:"netherite",pattern:"wild",show_in_tooltip:false}] 1

# modify all possible armor items
item modify entity @s armor.head hipochallenge:armor/generic
item modify entity @s armor.chest hipochallenge:armor/generic
item modify entity @s armor.legs hipochallenge:armor/generic
item modify entity @s armor.feet hipochallenge:armor/generic
