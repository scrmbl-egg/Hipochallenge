# TODO: Add names and descriptions

# FIXME: replace black dye PISTOL item with a stone or netherite pickaxe, since they are more reliable placeholder objects
# pistol item command 

item replace entity @s hotbar.0 with black_dye[max_stack_size=1,max_damage=6,custom_name='{"bold":false,"italic":false,"obfuscated":false,"strikethrough":false,"text":"Revolver V-445","underlined":false}',lore=['[{"bold":false,"color":"gold","italic":false,"obfuscated":false,"strikethrough":false,"text":"[","underlined":false},{"keybind":"key.drop"},{"text":"] "},{"bold":false,"color":"white","italic":false,"obfuscated":false,"strikethrough":false,"text":"Recargar","underlined":false}]','[{"bold":false,"color":"gold","italic":false,"obfuscated":false,"strikethrough":false,"text":"[","underlined":false},{"keybind":"key.use"},{"text":"] "},{"bold":false,"color":"white","italic":false,"obfuscated":false,"strikethrough":false,"text":"Disparar","underlined":false}]'],unbreakable={show_in_tooltip:false},rarity="epic",custom_model_data=1,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"player.entity_interaction_range",amount:-10,operation:"add_value",slot:"mainhand"},{id:"block_interaction_range",type:"player.block_interaction_range",amount:-10,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}] 1

item replace entity @s hotbar.1 with white_stained_glass_pane[item_name='"Espejo"'] 2

# FIXME: Change FAST_RELOAD item
item replace entity @s hotbar.2 with sugar[item_name='"Recarga rápida"'] 1

# FIXME: Change PISTOL_BULLET item
item replace entity @s hotbar.3 with arrow[item_name='"Bala"'] 6