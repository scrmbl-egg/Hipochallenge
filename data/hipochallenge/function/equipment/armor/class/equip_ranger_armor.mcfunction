#params team_trim, team_armor_color

#attributes
function hipochallenge:attributes/class/set_ranger_attributes

#head
$item replace entity @s armor.head with leather_helmet[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"minecraft:$(team_trim)",pattern:"minecraft:eye",show_in_tooltip:false}] 1

#chest
$item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false},dyed_color={rgb:$(team_armor_color),show_in_tooltip:false},trim={material:"minecraft:$(team_trim)",pattern:"minecraft:dune",show_in_tooltip:false}] 1

#legs
item replace entity @s armor.legs with air

#feet
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false},hide_additional_tooltip={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"armor",type:"generic.armor",amount:0,operation:"add_value"}],show_in_tooltip:false}] 1
