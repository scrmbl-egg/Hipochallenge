# params: team_trim, team_armor_color

# attributes
function hipochallenge:attributes/default/class/set_marksman_attributes

# head
$item replace entity @s armor.head with leather_helmet[dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"$(team_trim)",pattern:"eye",show_in_tooltip:false}] 1

# chest
$item replace entity @s armor.chest with leather_chestplate[dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"$(team_trim)",pattern:"dune",show_in_tooltip:false}] 1

# legs
item replace entity @s armor.legs with air

# feet
item replace entity @s armor.feet with iron_boots 1

# modify all possible armor items
item modify entity @s armor.head hipochallenge:armor/generic
item modify entity @s armor.chest hipochallenge:armor/generic
item modify entity @s armor.legs hipochallenge:armor/generic
item modify entity @s armor.feet hipochallenge:armor/generic