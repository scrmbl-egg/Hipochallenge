#>hipochallenge:abilities/class/tank/kit3/spirit/change_target
#
# Changes the spirit's target player to whoever the owner is looking at,
# or to theirselves if the owner is sneaking
#
# @context player

## setup temporary memory
data modify storage hc:temp spirit set value { \
    target_mode:"", \
    max_distance:0, \
    on_selected_command:"data modify storage hc:temp spirit.target_uuid set from entity @s UUID", \
    owner_uuid:[I; 0, 0, 0, 0], \
    target_uuid:[I; 0, 0, 0, 0], \
}

data modify storage hc:temp spirit.target_mode \
    set from storage hc:main \
    consts.classes[{internal_name:"tank"}].\
    kits[{id:3}].tank_k3_data.spirit.selection.target_mode

data modify storage hc:temp spirit.max_distance set from \
    storage hc:main \
    consts.classes[{internal_name:"tank"}].\
    kits[{id:3}].tank_k3_data.spirit.selection.max_distance

data modify storage hc:temp spirit.owner_uuid set from entity @s UUID

# if not sneaking, select a target player
execute unless predicate std:input/sneak \
    run \
    function hipochallenge:util/select_player \
    with storage hc:temp spirit

# if sneaking, select self as target
execute if predicate std:input/sneak \
    run \
    data modify storage hc:temp spirit.target_uuid set from entity @s UUID

# redirect spirit using temporary memory (UUID to set target)
execute if data storage hc:temp spirit.summon.recall \
    run \
    function core_hc:ability/tank/kit3/spirit/change_target \
    with storage hc:temp spirit

# clear temporary memory
data remove storage hc:temp spirit
