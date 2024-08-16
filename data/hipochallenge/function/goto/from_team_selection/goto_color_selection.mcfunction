tp @a[team=team1] 8 -59 20
tp @r[team=team1] 8 -59 14

tp @a[team=team2] 8 -59 2
tp @r[team=team2] 8 -59 8

execute as @a[team=!admins,team=!team1,team=!team2] run function hipochallenge:teams/join_spectators
function hipochallenge:teams/color/change_colors/reset_team_colors
execute as @a[team=!admins] run function hipochallenge:vfx/tp_vfx