# set has_name_changed var to false
data modify storage minecraft:hipochallenge vars.teams.team2.has_name_changed set value false

# update name to default name const
data modify storage minecraft:hipochallenge vars.teams.team2.name set from storage minecraft:hipochallenge consts.teams.team2.default_name

# print message
function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.team2_changed_name_to","fallback":"The second team is now called %s","with":[{"translate":"hc.teams.team2.default_name","fallback":"%s","with":[{"nbt":"vars.teams.team2.name","storage":"minecraft:hipochallenge"}],"color":"green","underlined":true}]}'}

# change team configuration
team modify team2 prefix ["",{"translate":"hc.teams.team2.default_name","fallback":"%s","with":["Team 2"],"underlined":true}," "]
team modify team2 displayName {"translate":"hc.teams.team2.default_name","fallback":"%s","with":["Team 2"],"underlined":true}
