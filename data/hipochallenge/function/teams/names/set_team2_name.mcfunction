# params:
    # name

# set has_name_changed var to false
data modify storage minecraft:hipochallenge vars.teams.team2.has_name_changed set value true

# update name with macro
$data modify storage minecraft:hipochallenge vars.teams.team2.name set value '$(name)'

# print message
$function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"translate\":\"hc.msg.all.team2_changed_name_to\",\"fallback\":\"The first team is now called %s\",\"with\":[{\"text\":\"$(name)\",\"color\":\"green\",\"underlined\":true}]}"}

# change team configuration
$team modify team2 prefix ["",{"text":"$(name)","underlined":true}," "]
$team modify team2 displayName {"text":"$(name)","underlined":true}

# update text displays
# TODO: update in-game text displays
