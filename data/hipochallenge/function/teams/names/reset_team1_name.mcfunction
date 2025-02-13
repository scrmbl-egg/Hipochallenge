# set has_name_changed var to false
data modify storage minecraft:hipochallenge vars.teams.team1.has_name_changed set value false

# update name to default name const
data modify storage minecraft:hipochallenge vars.teams.team1.name set from storage minecraft:hipochallenge consts.teams.team1.default_name

# print message
function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team1_changed_name_to","fallback":"The first team is now called %s","with":[{"translate":"hc.teams.team1.default_name","fallback":"%s","with":[{"nbt":"vars.teams.team1.name","storage":"minecraft:hipochallenge"}],"color":"green","underlined":true}]}'}

# change team configuration
team modify team1 prefix ["",{"translate":"hc.teams.team1.default_name","fallback":"%s","with":["Team 1"],"underlined":true}," "]
team modify team1 displayName {"translate":"hc.teams.team1.default_name","fallback":"%s","with":["Team 1"],"underlined":true}
