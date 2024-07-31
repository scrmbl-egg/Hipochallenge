#params: name

data modify storage minecraft:hipochallenge has_team1_name_changed set value true

$data modify storage minecraft:hipochallenge team1_name set value "$(name)"
$function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"[\"\",{\"text\":\"El nombre del primer equipo ha sido cambiado a \",\"bold\":false},{\"text\":\"$(name)\",\"color\":\"green\",\"bold\":false}]"}

$team modify team1 prefix {"text":"[$(name)] "}
$team modify team1 displayName {"text":"$(name)"}

function hipochallenge:teams/update_team_text_displays with storage minecraft:hipochallenge