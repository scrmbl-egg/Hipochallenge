#>core_hc:list_info/display
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
$execute unless predicate hc:mechanic/is_detected \
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
        " ", \
        { \
            translate:"hc.score.player_kill_count_representation", \
            fallback:"\u2694", \
            color:"green", \
        }, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
        " ", \
        { \
            translate:"hc.score.death_count_representation", \
            fallback:"\u2620", \
            color:"red", \
        }, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
        " ", \
        { \
            translate:"hc.score.points_representation", \
            fallback:"\u2666", \
            color:"gold", \
        }, \
        " ", \
    ]

# show kit and perk if player is detected
$execute if predicate hc:mechanic/is_detected \
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
        " ", \
        { \
            translate:"hc.score.player_kill_count_representation", \
            fallback:"\u2694", \
            color:"green", \
        }, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.DeathCount"},color:"yellow"}, \
        " ", \
        { \
            translate:"hc.score.death_count_representation", \
            fallback:"\u2620", \
            color:"red", \
        }, \
        {text:" :: ",color:"gray"}, \
        {score:{name:"@s",objective:"hc.Points"},color:"yellow"}, \
        " ", \
        { \
            translate:"hc.score.points_representation", \
            fallback:"\u2666", \
            color:"gold", \
        }, \
        " ", \
    ]
