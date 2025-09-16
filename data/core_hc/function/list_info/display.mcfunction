#>core_hc:player_list_info/display
#
# Displays the player's updated list information.
#
# @input
#   class_text: ::java::util::text::Text
#       Text component for the class name.
#   kit_text: ::java::util::text::Text
#       Text component for the kit name.
#   perk_text: ::java::util::text::Text
#       Text component for the perk name.

# hide kit and perk if player is not detected
$execute unless predicate hipochallenge:mechanic/is_detected \
    run \
    scoreboard players display numberformat @s hc.ListInfo fixed [ \
        "", \
        $(class_text), \
        {text:" :: ",color:"gray"}, \
        {text:"?",color:"gray"}, \
        {text:" :: ",color:"gray"}, \
        {text:"?",color:"gray"}, \
        {text:" - ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.PlayerKillCount"},color:"yellow"}, \
        {text:" \ud83d\udde1",color:"green"}, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
        {text:" \u2620",color:"red"}, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
        {text:" \u2605 ",color:"gold"}, \
    ]

# show kit and perk if player is detected
$execute if predicate hipochallenge:mechanic/is_detected \
    run \
    scoreboard players display numberformat @s hc.ListInfo fixed [ \
        "", \
        $(class_text), \
        {text:" :: ",color:"gray"}, \
        $(kit_text), \
        {text:" :: ",color:"gray"}, \
        $(perk_text), \
        {text:" - ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.PlayerKillCount"},color:"yellow"}, \
        {text:" \ud83d\udde1",color:"green"}, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
        {text:" \u2620",color:"red"}, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
        {text:" \u2605 ",color:"gold"}, \
    ]
