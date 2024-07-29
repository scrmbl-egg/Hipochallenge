kill @e[type=item,distance=..0.25]
particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0 10 normal @a
playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1 1.5


execute if score $pickup_dice var matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:cake"}}
execute if score $pickup_dice var matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond"}}
execute if score $pickup_dice var matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:bone"}}

function hipochallenge:msg/debug/msg_info {msg:"Pickup generado"}