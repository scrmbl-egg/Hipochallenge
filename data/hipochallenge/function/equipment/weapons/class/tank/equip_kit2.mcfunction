# shield goes in weapon.offhand
function hipochallenge:equipment/weapons/shield/equip_shield

# sword
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hipochallenge:class/tank/kit2/sword

# trident
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hipochallenge:class/tank/kit2/trident

# goat horn (not given if perk == 3)
execute unless predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.2 with paper
execute unless predicate hipochallenge:perk/is_perk3 run item modify entity @s hotbar.2 hipochallenge:class/tank/kit2/goat_horn
