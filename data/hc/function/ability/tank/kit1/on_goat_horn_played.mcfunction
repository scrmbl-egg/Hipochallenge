#>hc:ability/tank/kit1/on_goat_horn_played
#
# Executes all commands when the player uses the tank's kit 1 goat horn.
#
# @context player

# TODO: we should probably just use the `minecraft:consumable` component
# instead of using the `clear` command. Horns were the first items to be
# implemented and it shows.

# revoke detection advancement
advancement revoke @s \
    only hc.core:class/tank/kit1/used_goat_horn

# team with no abilities guard clause
execute unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error/not_in_team_with_abilities

# silenced guard clause
execute if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send/silenced_message

function hc:msg/debug/send_info { \
    text:"\"goat horn used\"", \
}

# no cooldown, item must be deleted due to it being a goat horn
# score: tank_kit1_goat_horn_cd
clear @s *[minecraft:custom_data={"hc:item/id":"hc:tank/kit1/goat_horn"}] 1

data modify storage hc:temp tank_k1_goat_horn set value { \
    team:"", \
    radius:0, \
}

# get team
function hc:team/get_self_team { \
    out_storage:"hc:temp", \
    out_nbt:"tank_k1_goat_horn.team", \
}
#>_
# @out
#   hc:temp tank_k1_goat_horn
#       team

# get radius
data modify storage hc:temp tank_k1_goat_horn.radius \
    set from storage hc:main \
    consts.classes[{key:"hc:tank"}].\
    kits[{id:1}].tank_k1_data.horn.radius

# give all effect info effects
function hc.core:ability/tank/kit1/goat_horn/give_effects \
    with storage hc:temp tank_k1_goat_horn

# fx
execute at @s \
    run \
    function hc.core:fx/ability/tank/kit1/used_goat_horn

# free memory and remove tags
data remove storage hc:temp tank_k1_goat_horn
