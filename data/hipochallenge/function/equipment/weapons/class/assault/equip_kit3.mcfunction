# TODO: add assault shields

# shield
function hipochallenge:equipment/weapons/shield/equip_shield {item_slot:"weapon.offhand"}

# sword
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hipochallenge:weapons/class/assault/kit3/sword

# pushing projectile
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hipochallenge:weapons/class/assault/kit3/pushing_projectile