#>hipochallenge:equipment/equip_armor
#
# Equips armor to the player depending on the player's class.
#
# @context player

# guard clause
execute as @s unless predicate hipochallenge:team/is_in_pvp_team \
    run \
    return run \
    function hipochallenge:msg/private/send_error \
    {text:{ \
        translate:"hc.msg.private.error.not_belonging_to_team_with_armor", \
        fallback:"You don't belong in a team that is allowed to equip armor", \
    }}

# TODO: this match/switch-like structure could be changed with an event macros.

execute if predicate hipochallenge:class/is_tank \
    run \
    function hipochallenge:equipment/armor/equip_tank_armor
execute if predicate hipochallenge:class/is_marksman \
    run \
    function hipochallenge:equipment/armor/equip_marksman_armor
execute if predicate hipochallenge:class/is_assassin \
    run \
    function hipochallenge:equipment/armor/equip_assassin_armor
execute if predicate hipochallenge:class/is_support \
    run \
    function hipochallenge:equipment/armor/equip_support_armor
execute if predicate hipochallenge:class/is_recon \
    run \
    function hipochallenge:equipment/armor/equip_recon_armor
execute if predicate hipochallenge:class/is_assault \
    run \
    function hipochallenge:equipment/armor/equip_assault_armor
