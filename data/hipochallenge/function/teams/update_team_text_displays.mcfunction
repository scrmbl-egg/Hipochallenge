kill @e[type=text_display,tag=team_text_display]

$summon text_display 17.1 -58 37 {alignment:"center",Rotation:[-90F,0F],Tags:["team1_text_display","team_text_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"color":"white","text":"$(team1_name)"}'}

$summon text_display 25.9 -58 37 {alignment:"center",Rotation:[90F,0F],Tags:["team2_text_display","team_text_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"color":"white","text":"$(team2_name)"}'} 