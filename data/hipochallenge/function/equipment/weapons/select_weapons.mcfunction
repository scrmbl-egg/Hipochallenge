# storage
    # local_kit_number
#

$execute as @s if predicate hipochallenge:class/is_tank run function hipochallenge:equipment/weapons/class/tank/equip_kit$(local_kit_number)

$execute as @s if predicate hipochallenge:class/is_ranger run function hipochallenge:equipment/weapons/class/ranger/equip_kit$(local_kit_number)

$execute as @s if predicate hipochallenge:class/is_assassin run function hipochallenge:equipment/weapons/class/assassin/equip_kit$(local_kit_number)

$execute as @s if predicate hipochallenge:class/is_support run function hipochallenge:equipment/weapons/class/support/equip_kit$(local_kit_number)

$execute as @s if predicate hipochallenge:class/is_recon run function hipochallenge:equipment/weapons/class/recon/equip_kit$(local_kit_number)

$execute as @s if predicate hipochallenge:class/is_assault run function hipochallenge:equipment/weapons/class/assault/equip_kit$(local_kit_number)
