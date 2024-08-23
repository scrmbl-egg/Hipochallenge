team leave @s

function hipochallenge:msg/all/inject_text/msg_all_inject {txt:'{"translate":"hc.msg.all.player_has_joined_team","fallback":"%1$s has joined %2$s","with":[{"selector":"@s","color":"gray"},{"translate":"hc.teams.spectators.name","fallback":"Spectators","color":"gray"}]}'}

team join spectators @s

function hipochallenge:class/reset_class
function hipochallenge:kit/reset_kit
function hipochallenge:perk/reset_perk

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1