data modify storage minecraft:hipochallenge has_team2_name_changed set value false

data modify storage minecraft:hipochallenge team2_name set from storage minecraft:hipochallenge TEAM2_DEFAULT_NAME

function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team2_changed_name_to","fallback":"The second team is now called %s","with":[{"translate":"hc.teams.team2.default_name","fallback":"%s","with":[{"nbt":"team2_name","storage":"minecraft:hipochallenge"}],"color":"green"}]}'}

team modify team2 prefix ["[",{"translate":"hc.teams.team2.default_name","fallback":"%s","with":["Team 2"]},"] "]
team modify team2 displayName {"translate":"hc.teams.team2.default_name","fallback":"%s","with":["Team 2"]}