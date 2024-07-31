data modify storage minecraft:hipochallenge has_team1_name_changed set value false

data modify storage minecraft:hipochallenge team1_name set from storage minecraft:hipochallenge TEAM1_DEFAULT_NAME

function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"translate\":\"hc.msg.all.team1_changed_name_to\",\"fallback\":\"The first team is now called %s\",\"with\":[{\"translate\":\"hc.teams.team1_default_name\",\"fallback\":\"%s\",\"with\":[{\"nbt\":\"team1_name\",\"storage\":\"minecraft:hipochallenge\"}]}]}"}

team modify team1 prefix ["[",{"translate":"hc.teams.team1_default_name","fallback":"%s","with":["Team 1"]},"] "]
team modify team1 displayName {"translate":"hc.teams.team1_default_name","fallback":"%s","with":["Team 1"]}