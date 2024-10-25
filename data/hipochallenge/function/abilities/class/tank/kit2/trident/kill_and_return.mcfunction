# storage:
    # TANK_K2_TRIDENT_CD_TICKS

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0.1 1 normal
playsound minecraft:item.trident.return master @a ~ ~ ~ 1 1 0.3

execute on origin store result score @s tank_kit2_trident_cd run data get storage minecraft:hipochallenge TANK_K2_TRIDENT_CD_TICKS

kill @s