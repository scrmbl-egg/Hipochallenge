title @s times 40 20 20
title @s title [{"bold":true,"color":"#ebeeff","text":"HIPOCHALLENGE"}]
title @s subtitle {"bold":true,"color":"red","text":"PHOENIX"}
playsound hipochallenge:notification.welcome master @s ~ ~ ~ 1 1

tag @s add me
playsound minecraft:entity.shulker_bullet.hit master @a[tag=!me] ~ ~ ~ 1 1.25
particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal @a[tag=!me]
tag @s remove me

