# params: team_trim, team_armor_color

# attributes
function hipochallenge:attributes/class/set_assassin_attributes

# head
$item replace entity @s armor.head with leather_helmet[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"minecraft:$(team_trim)",pattern:"minecraft:tide",show_in_tooltip:false}] 1

# chest
$item replace entity @s armor.chest with chainmail_chestplate[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false},trim={material:"minecraft:$(team_trim)",pattern:"minecraft:tide",show_in_tooltip:false}] 1

# legs
$item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:$(team_armor_color),show_in_tooltip:false}] 1

# feet
item replace entity @s armor.feet with air
