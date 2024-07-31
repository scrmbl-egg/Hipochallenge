#storage: team2_armor_color, team2_trim

execute as @s unless predicate hipochallenge:class/has_all_options_selected run function hipochallenge:msg/private/msg_private_error {msg:"No tienes todas las opciones seleccionadas (clase, kit o perk)."}

execute as @s if predicate hipochallenge:class/has_class run function hipochallenge:vfx/equip_vfx
execute as @s if predicate hipochallenge:class/has_class run function hipochallenge:msg/debug/inject_text/msg_inject_info {txt:"[\"\",{\"text\":\"Equipando armadura a \",\"italic\":true,\"bold\":false,\"color\":\"gray\"},{\"selector\":\"@s\",\"italic\":true,\"bold\":false,\"color\":\"gray\"},{\"text\":\"...\",\"italic\":true,\"bold\":false,\"color\":\"gray\"}]"}

$execute as @s if predicate hipochallenge:class/is_tank run function hipochallenge:equipment/armor/class/equip_tank_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}
$execute as @s if predicate hipochallenge:class/is_marksman run function hipochallenge:equipment/armor/class/equip_marksman_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}
$execute as @s if predicate hipochallenge:class/is_assassin run function hipochallenge:equipment/armor/class/equip_assassin_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}
$execute as @s if predicate hipochallenge:class/is_support run function hipochallenge:equipment/armor/class/equip_support_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}
$execute as @s if predicate hipochallenge:class/is_recon run function hipochallenge:equipment/armor/class/equip_recon_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}
$execute as @s if predicate hipochallenge:class/is_assault run function hipochallenge:equipment/armor/class/equip_assault_armor {team_trim:$(team2_trim),team_armor_color:$(team2_armor_color)}