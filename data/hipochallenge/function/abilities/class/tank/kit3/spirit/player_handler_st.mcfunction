# Storage
    # TANK_K3_SPIRIT_SELECTOR_RANGE_BLOCKS
    # local_self_team

# Get selection
$execute as @s run function hipochallenge:std/sphere_select/sphere_select {range:"$(TANK_K3_SPIRIT_SELECTOR_RANGE_BLOCKS)",selector:"@a[nbt=!{UUID:$(local_spirit_owner)},team=$(local_self_team),distance=..$(TANK_K3_SPIRIT_SELECTOR_RANGE_SPHERE_BLOCKS),sort=nearest]"}

# Get nearest player within selection range
data modify storage minecraft:hipochallenge local_target set from storage minecraft:hipochallenge local_sphere_selector_targets[0]

tag @s[tag=!redirected_spirit,tag=redirected_spirit_cache] remove redirected_spirit_cache
# in:
    # local_spirit_owner
    # local_spirit_uuid
    # local_target
execute as @s[tag=redirected_spirit] run function hipochallenge:abilities/class/tank/kit3/spirit/redirect_st with storage minecraft:hipochallenge

# in:
    # local_target
execute as @s run function hipochallenge:vfx/abilities/class/tank/kit3/spirit_selector_st with storage minecraft:hipochallenge

# Clear memory
data remove storage hipochallenge local_target
data remove storage minecraft:hipochallenge local_sphere_selector_targets
tag @s remove redirected_spirit