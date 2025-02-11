# params: team_trim, team_armor_color

# TODO: change armor

# attributes
function hipochallenge:attributes/class/base/set_support_attributes

# head
$item replace entity @s armor.head with leather_helmet[dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"$(team_trim)",pattern:"sentry",show_in_tooltip:false}] 1

# chest
$item replace entity @s armor.chest with leather_chestplate[dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"$(team_trim)",pattern:"sentry",show_in_tooltip:false}] 1

# legs
item replace entity @s armor.legs with iron_leggings 1

# feet
$item replace entity @s armor.feet with leather_boots[dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"iron",pattern:"shaper",show_in_tooltip:false}] 1

# modify all possible armor items
item modify entity @s armor.head hipochallenge:armor/generic
item modify entity @s armor.chest hipochallenge:armor/generic
item modify entity @s armor.legs hipochallenge:armor/generic
item modify entity @s armor.feet hipochallenge:armor/generic
