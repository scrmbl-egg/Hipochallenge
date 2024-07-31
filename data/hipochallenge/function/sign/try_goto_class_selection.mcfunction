# go to class selection
execute if function hipochallenge:teams/color/are_team_colors_selected run function hipochallenge:goto/from_color_selection/goto_class_selection
execute unless function hipochallenge:teams/color/are_team_colors_selected run function hipochallenge:msg/all/msg_all_error {msg:"Los equipos han seleccionado el mismo color o algún equipo no ha seleccionado uno"}