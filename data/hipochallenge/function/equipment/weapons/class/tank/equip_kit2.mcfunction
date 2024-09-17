# shield
function hipochallenge:equipment/weapons/shield/equip_shield {item_slot:"weapon.offhand"}

# sword
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hipochallenge:weapons/class/tank/kit2/sword

# trident
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hipochallenge:weapons/class/tank/kit2/trident

# goat horn (not given if perk == 3)
execute unless predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.2 with paper
execute unless predicate hipochallenge:perk/is_perk3 run item modify entity @s hotbar.2 hipochallenge:weapons/class/tank/kit2/goat_horn
