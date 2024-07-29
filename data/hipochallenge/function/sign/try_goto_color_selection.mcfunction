execute if function hipochallenge:teams/check_teams run function hipochallenge:goto/from_team_selection/goto_color_selection
execute unless function hipochallenge:teams/check_teams run function hipochallenge:msg/all/msg_all_error {msg:"El número de jugadores por equipo es incorrecto"}
function hipochallenge:sign/try_goto_color_selection