$execute at @s if entity @s[tag=team1] run particle dust{color:$(team1_dust_color),scale:2} ~ ~ ~ 0 0 0 1 0 force
$execute at @s if entity @s[tag=team2] run particle dust{color:$(team2_dust_color),scale:2} ~ ~ ~ 0 0 0 1 0 force
execute at @s if entity @s[tag=neutral] run particle dust{color:[0.500,0.500,0.500],scale:2} ~ ~ ~ 0 0 0 1 0 force
execute at @s if entity @s[tag=admin] run particle end_rod ~ ~ ~ 0 0 0 1 0 force