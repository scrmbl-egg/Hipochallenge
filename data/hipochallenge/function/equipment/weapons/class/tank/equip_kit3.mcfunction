# shield goes in weapon.offhand
item replace entity @s weapon.offhand with paper
item modify entity @s weapon.offhand hipochallenge:class/tank/kit3/bubble_shield

# axe
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hipochallenge:class/tank/kit3/axe

# redirect spirit item
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hipochallenge:class/tank/kit3/redirect_spirit

# goat horn (not given if perk == 3)
execute unless predicate hipochallenge:perk/is_perk3 run item replace entity @s hotbar.2 with paper
execute unless predicate hipochallenge:perk/is_perk3 run item modify entity @s hotbar.2 hipochallenge:class/tank/kit3/goat_horn