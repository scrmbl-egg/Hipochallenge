# guard clause
execute as @s unless predicate hipochallenge:class/has_all_options_selected run return run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_all_options_selected\",\"fallback\":\"You don't have all options selected (class, kit, or perk)\",\"color\":\"red\"}"}

# show vfx
function hipochallenge:vfx/equip_vfx

# clear equipment
function hipochallenge:equipment/clear

# equip stuff
function hipochallenge:equipment/equip_armor
function hipochallenge:equipment/equip_weapons
