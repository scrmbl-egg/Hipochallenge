# params: name

data modify storage minecraft:hipochallenge has_team2_name_changed set value true

$data modify storage minecraft:hipochallenge team2_name set value "$(name)"
$function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"translate\":\"hc.msg.all.team2_changed_name_to\",\"fallback\":\"The second team is now called %s\",\"with\":[{\"text\":\"$(name)\",\"color\":\"green\",\"underlined\":true}]}"}

$team modify team2 prefix ["",{"text":"$(name)","underlined":true}," "]
$team modify team2 displayName {"text":"$(name)","underlined":true}

function hipochallenge:teams/text_displays/update_st with storage minecraft:hipochallenge