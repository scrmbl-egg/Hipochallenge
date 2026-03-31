#>core_hc:ability/tank/kit1/show_targets
#
# Shows all targets in range via particles.
#
# @context player

# set temporary schema
data modify storage hc:temp tank_k1_horn_targetting set value { \
    owner_uuid:[I; 0, 0, 0, 0], \
    team:"", \
    radius:0, \
}

# get uuid
data modify storage hc:temp tank_k1_horn_targetting.owner_uuid \
    set from entity @s UUID

# get team
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"tank_k1_horn_targetting.team", \
}

# get radius
data modify storage hc:temp tank_k1_horn_targetting.radius \
    set from storage hc:main consts.classes[{internal_name:"hc:tank"}].\
    kits[{id:1}].tank_k1_data.horn.radius

# call display target particles func
function core_hc:ability/tank/kit1/goat_horn/display_target_particles \
    with storage hc:temp tank_k1_horn_targetting

# free memory
data remove storage hc:temp tank_k1_horn_targetting
