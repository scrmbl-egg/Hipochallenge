execute as @s unless predicate hipochallenge:class/has_all_options_selected run function hipochallenge:msg/private/msg_private_error {msg:"No tienes todas las opciones seleccionadas (clase, kit o perk)."}


execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:vfx/equip_vfx

execute as @s if predicate hipochallenge:class/has_all_options_selected run clear @s *

execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:equipment/equip_armor
execute as @s if predicate hipochallenge:class/has_all_options_selected run function hipochallenge:equipment/equip_weapons