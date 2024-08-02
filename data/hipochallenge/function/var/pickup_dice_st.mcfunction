execute if predicate hipochallenge:dice/50 run scoreboard players add $pickup_dice var 1
$execute if score $pickup_dice var matches $(pickup_dice).. run scoreboard players set $pickup_dice var 1

scoreboard players remove $pickup_dice_iteration var 1
execute if score $pickup_dice_iteration var matches 1.. run function hipochallenge:var/pickup_dice_st with storage minecraft:hipochallenge