data modify storage minecraft:hipochallenge has_team1_name_changed set value true
data modify storage minecraft:hipochallenge has_team2_name_changed set value false

data modify storage minecraft:hipochallenge team1_name set value "Team 1"
data modify storage minecraft:hipochallenge team2_name set value "Team 2"

function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"[{\"text\":\"El nombre del primer equipo ha sido cambiado a \",\"bold\":false},{\"translate\":\"hc.teams.team1_default_name\",\"fallback\":\"%s\",\"with\":[{\"nbt\":\"team1_name\",\"storage\":\"minecraft:hipochallenge\"}],\"color\":\"green\",\"bold\":false}]"}

function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"[{\"text\":\"El nombre del segundo equipo ha sido cambiado a \",\"bold\":false},{\"translate\":\"hc.teams.team2_default_name\",\"fallback\":\"%s\",\"with\":[{\"nbt\":\"team2_name\",\"storage\":\"minecraft:hipochallenge\"}],\"color\":\"green\",\"bold\":false}]"}

team modify team2 prefix ["[",{"translate":"hc.teams.team2_default_name"},"] "]
team modify team2 displayName {"translate":"hc.teams.team2_default_name"}

team modify team1 prefix ["[",{"translate":"hc.teams.team1_default_name"},"] "]
team modify team1 displayName {"translate":"hc.teams.team1_default_name"}

#function hipochallenge:teams/names/set_team1_name {name:"Equipo 1"}
#function hipochallenge:teams/names/set_team2_name {name:"Equipo 2"}