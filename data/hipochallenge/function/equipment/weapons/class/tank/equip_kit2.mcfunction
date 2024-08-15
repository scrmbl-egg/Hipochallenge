
# shield goes in weapon.offhand
function hipochallenge:equipment/weapons/shield/equip_shield

item replace entity @s hotbar.0 with iron_sword[unbreakable={show_in_tooltip:false}]

# goat horn is not given if perk == 3
execute as @s unless predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.1 with goat_horn[custom_data={item_id:tank_k2_goat_horn},item_name='{"translate":"hc.items.tank"}',lore=['[{"color":"gold","italic":false,"text":"["},{"keybind":"key.use"},"] ",{"color":"white","text":"Soplar cuerno:"}]','[{"color":"blue","italic":false,"text":"  Tú: "},{"color":"white","fallback":"Resistance","translate":"effect.minecraft.resistance"}," ",{"color":"white","text":"x¹"},{"color":"dark_gray","text":" :: "},{"color":"white","text":"0s"}]','[{"color":"red","italic":false,"text":"  Enemigos: "},{"color":"white","translate":"effect.minecraft.slowness"}," ",{"color":"white","translate":"enchantment.level.2"},{"color":"dark_gray","text":" :: "},{"color":"dark_purple","text":"Supresión"},{"color":"dark_gray","text":" :: "},{"color":"white","text":"0s "},{"color":"dark_gray","text":":: "},{"color":"white","text":"0b"}]','" "','{"color":"yellow","text":"Un solo uso.","italic":false}','" "','[{"color":"gray","italic":false,"text":"¹x: "},{"color":"gray","text":"Número de "},{"color":"red","text":"enemigos "},{"color":"gray","text":"en 0b"}]'],unbreakable={show_in_tooltip:false},hide_additional_tooltip={},rarity="epic",instrument="minecraft:ponder_goat_horn"] 1

# items from here must be displaced one to the left if perk == 3

execute as @s unless predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.2 with trident[enchantments={loyalty:10}]
execute as @s if predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.1 with trident[enchantments={loyalty:10}]