# params:
    # kit_number
#

# tank
$execute as @s if predicate hc:class/is_tank run function hc:equipment/weapons/class/tank/equip_kit$(kit_number)

# marksman
$execute as @s if predicate hc:class/is_marksman run function hc:equipment/weapons/class/marksman/equip_kit$(kit_number)

# assassin
$execute as @s if predicate hc:class/is_assassin run function hc:equipment/weapons/class/assassin/equip_kit$(kit_number)

# support
$execute as @s if predicate hc:class/is_support run function hc:equipment/weapons/class/support/equip_kit$(kit_number)

# recon
$execute as @s if predicate hc:class/is_recon run function hc:equipment/weapons/class/recon/equip_kit$(kit_number)

# assault
$execute as @s if predicate hc:class/is_assault run function hc:equipment/weapons/class/assault/equip_kit$(kit_number)
