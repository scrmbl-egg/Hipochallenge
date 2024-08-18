# params:
    # item_slot

$execute as @s[team=team1] if predicate hipochallenge:teams/color/is_team1_red run function hipochallenge:equipment/weapons/shield/color/equip_red_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team1] if predicate hipochallenge:teams/color/is_team1_yellow run function hipochallenge:equipment/weapons/shield/color/equip_yellow_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team1] if predicate hipochallenge:teams/color/is_team1_green run function hipochallenge:equipment/weapons/shield/color/equip_green_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team1] if predicate hipochallenge:teams/color/is_team1_blue run function hipochallenge:equipment/weapons/shield/color/equip_blue_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team1] if predicate hipochallenge:teams/color/is_team1_purple run function hipochallenge:equipment/weapons/shield/color/equip_purple_shield {item_slot:"$(item_slot)"}

$execute as @s[team=team2] if predicate hipochallenge:teams/color/is_team2_red run function hipochallenge:equipment/weapons/shield/color/equip_red_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team2] if predicate hipochallenge:teams/color/is_team2_yellow run function hipochallenge:equipment/weapons/shield/color/equip_yellow_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team2] if predicate hipochallenge:teams/color/is_team2_green run function hipochallenge:equipment/weapons/shield/color/equip_green_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team2] if predicate hipochallenge:teams/color/is_team2_blue run function hipochallenge:equipment/weapons/shield/color/equip_blue_shield {item_slot:"$(item_slot)"}
$execute as @s[team=team2] if predicate hipochallenge:teams/color/is_team2_purple run function hipochallenge:equipment/weapons/shield/color/equip_purple_shield {item_slot:"$(item_slot)"}

$execute as @s[team=neutral] run function hipochallenge:equipment/weapons/shield/color/equip_neutral_shield {item_slot:"$(item_slot)"}