# Storage
    # TANK_K3_SPIRIT_SELECTOR_RANGE_BLOCKS
    # local_self_team

$execute as @s run function hipochallenge:std/sphere_select/sphere_select {range:"$(TANK_K3_SPIRIT_SELECTOR_RANGE_BLOCKS)",selector:"@a[nbt=!{UUID:$(local_spirit_owner)},team=$(local_self_team),distance=..$(TANK_K3_SPIRIT_SELECTOR_RANGE_SPHERE_BLOCKS),sort=nearest]"}

data modify storage minecraft:hipochallenge local_target set from storage minecraft:hipochallenge local_sphere_selector_targets[0]

execute as @s run function hipochallenge:vfx/abilities/class/tank/kit3/spirit_selector_st with storage hipochallenge

data remove storage hipochallenge local_target
data remove storage minecraft:hipochallenge local_sphere_selector_targets