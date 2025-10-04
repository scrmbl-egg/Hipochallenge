# shield
function hc:equipment/weapons/shield/equip_shield {item_slot:"weapon.offhand"}

# sword
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hc:weapons/class/tank/kit2/sword

# trident
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hc:weapons/class/tank/kit2/trident

# goat horn (not given if perk == 3)
execute unless predicate hc:perk/is_perk3 run item replace entity @s hotbar.2 with paper
execute unless predicate hc:perk/is_perk3 run item modify entity @s hotbar.2 hc:weapons/class/tank/kit2/goat_horn
