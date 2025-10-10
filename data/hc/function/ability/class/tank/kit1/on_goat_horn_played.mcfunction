#>hc:ability/class/tank/kit1/on_goat_horn_played
#
# Executes all commands when the player uses the tank's kit 1 goat horn.
#
# @context player

# revoke detection advancement
advancement revoke @s \
    only core_hc:class/tank/kit1/used_goat_horn

# team with no abilities guard clause
execute as @s unless predicate hc:team/is_in_pvp_team \
    run \
    return run \
    function hc:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.not_belonging_to_team_with_abilities", \
            fallback:"You don't belong in a team that is allowed to use this ability", \
        } \
    }

# silenced guard clause
execute as @s if predicate hc:mechanic/is_silenced \
    run \
    return run \
    function hc:msg/private/send \
    {text: \
        { \
            color:"red", \
            translate:"hc.msg.private.mechanics.silenced", \
            fallback:"You are silenced!", \
        } \
    }

function hc:msg/debug/send_info { \
    text:"\"goat horn used\"", \
}

# no cooldown, item must be deleted due to it being a goat horn
# score: tank_kit1_goat_horn_cd
clear @s *[custom_data={"hc:item/id":"tank_k1_goat_horn"}] 1

data modify storage hc:temp tank_k1_goat_horn set value { \
    team:"", \
    radius:0, \
    player_limit:0, \
}

# get team
function core_hc:team/get_self_team { \
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
    consts.classes[{internal_name:"tank"}].\
    kits[{id:1}].tank_k1_data.horn.radius

# get player limit
data modify storage hc:temp tank_k1_goat_horn.player_limit \
    set from storage hc:main \
    consts.game.team_size

# give all effect info effects
function core_hc:ability/tank/kit1/goat_horn/give_effects \
    with storage hc:temp tank_k1_goat_horn

# fx
execute at @s \
    run \
    function core_hc:fx/ability/tank/kit1/used_goat_horn

# free memory and remove tags
data remove storage hc:temp tank_k1_goat_horn
