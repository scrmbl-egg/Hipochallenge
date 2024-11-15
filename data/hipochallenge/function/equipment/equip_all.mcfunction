# guard clause
execute as @s unless predicate hipochallenge:class/has_all_options_selected run function hipochallenge:msg/private/inject_text/msg_private_inject_error {txt:"{\"translate\":\"hc.msg.private.error.not_all_options_selected\",\"fallback\":\"You don't have all options selected (class, kit, or perk)\",\"color\":\"red\"}"}


execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:vfx/equip_vfx

function hipochallenge:equipment/clear

execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:equipment/equip_armor
execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:equipment/equip_weapons

