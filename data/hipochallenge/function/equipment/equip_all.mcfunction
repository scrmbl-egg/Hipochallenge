#>hipochallenge:equipment/equip_all
#
# Equips both armor and weapons depending on the player's class, kit and perk.
#
# @context player

# guard clause
execute as @s \
    unless predicate hipochallenge:has_all_options_selected \
    run \
    return run \
    function hipochallenge:msg/private/send_error { \
        text:{ \
            translate:"hc.msg.private.error.not_all_options_selected", \
            fallback:"You don't have all options selected (class, kit, or perk)", \
        } \
    }

# clear equipment
function hipochallenge:equipment/clear

# equip stuff
function hipochallenge:equipment/equip_armor
function hipochallenge:equipment/equip_weapons
