#>core_hc:fx/util/login
#
# Runs the titles and sound effects for when a player joins the game.
#
# @context player

# tag self
tag @s add __hc.Me

# welcome title and sound effect
title @s times 1.6s 2.5s 0.4s
title @s title [{bold:true,color:"#ebeeff",text:"HIPOCHALLENGE"}]
title @s subtitle {bold:true,color:"red",text:"PHOENIX"}

# play little jingle for the new player! :D
playsound hc:notification.welcome music @s ~ ~ ~ 1 1 1
# TODO: sound name should probably be changed

# particles and sound effects for everyone else
particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.1 50 normal @a[tag=!__hc.Me]

playsound minecraft:entity.shulker_bullet.hit \
    player @a[tag=!__hc.Me] ~ ~ ~ 1 1.25

# remove self tag
tag @s remove __hc.Me
