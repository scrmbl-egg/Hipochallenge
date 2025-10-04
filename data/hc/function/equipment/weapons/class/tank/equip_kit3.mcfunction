# bubble shield
item replace entity @s weapon.offhand with paper
item modify entity @s weapon.offhand hc:weapons/class/tank/kit3/bubble_shield

# axe
item replace entity @s hotbar.0 with paper
item modify entity @s hotbar.0 hc:weapons/class/tank/kit3/axe

# redirect spirit item
item replace entity @s hotbar.1 with paper
item modify entity @s hotbar.1 hc:weapons/class/tank/kit3/redirect_spirit

# goat horn (not given if perk == 3)
execute unless predicate hc:perk/is_perk3 run item replace entity @s hotbar.2 with paper
execute unless predicate hc:perk/is_perk3 run item modify entity @s hotbar.2 hc:weapons/class/tank/kit3/goat_horn

# spirit
execute as @s run function hc:ability/class/tank/kit3/spirit/summon