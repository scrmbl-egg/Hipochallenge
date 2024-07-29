team join spectator @s
function hipochallenge:msg/all/inject_text/msg_all_inject {txt:"{\"bold\":false,\"color\":\"aqua\",\"selector\":\"@s\"},{\"bold\":false,\"color\":\"white\",\"text\":\" se ha unido a \"},{\"bold\":false,\"color\":\"gray\",\"text\":\"espectadores\"}"}

function hipochallenge:class/reset_class
function hipochallenge:kit/reset_kit
function hipochallenge:perk/reset_perk

execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.25 1