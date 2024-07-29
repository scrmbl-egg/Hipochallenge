#params: name

$data modify storage minecraft:hipochallenge team2_name set value "$(name)"
$function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"[\"\",{\"text\":\"El nombre del segundo equipo ha sido cambiado a \",\"bold\":false},{\"text\":\"$(name)\",\"color\":\"green\",\"bold\":false}]"}

$team modify team2 prefix {"text":"[$(name)] "}
$team modify team2 displayName {"text":"$(name)"}

function hipochallenge:teams/update_team_text_displays with storage minecraft:hipochallenge