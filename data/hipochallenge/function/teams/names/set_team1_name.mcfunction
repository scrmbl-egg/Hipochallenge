# params: name

data modify storage minecraft:hipochallenge has_team1_name_changed set value true

$data modify storage minecraft:hipochallenge team1_name set value "$(name)"
$function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"translate\":\"hc.msg.all.team1_changed_name_to\",\"fallback\":\"The first team is now called %s\",\"with\":[{\"text\":\"$(name)\",\"color\":\"green\"}]}"}

$team modify team1 prefix {"text":"[$(name)] "}
$team modify team1 displayName {"text":"$(name)"}

function hipochallenge:teams/text_displays/update_st with storage minecraft:hipochallenge