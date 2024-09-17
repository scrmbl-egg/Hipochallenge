title @s times 40 20 20
title @s title [{"bold":true,"color":"dark_purple","text":"HIPO "},{"bold":true,"color":"#FF6600","text":"CHALLENGE"}]
title @s subtitle {"bold":true,"color":"dark_red","text":"PHOENIX"}
playsound hipochallenge:notification.welcome master @s ~ ~ ~ 1 1

particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal
tag @s add me
playsound minecraft:entity.shulker_bullet.hit master @a[tag=!me] ~ ~ ~ 1 1.25
tag @s remove me

