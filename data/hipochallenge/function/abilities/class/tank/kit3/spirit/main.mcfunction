# get info
data modify storage minecraft:hipochallenge local_spirit_target set from entity @s data.target
data modify storage minecraft:hipochallenge local_spirit_owner set from entity @s data.owner
data modify storage minecraft:hipochallenge local_spirit_uuid set from entity @s UUID

execute as @s run function hipochallenge:abilities/class/tank/kit3/spirit/move_st with storage hipochallenge
execute as @s at @s run function hipochallenge:vfx/abilities/class/tank/kit3/spirit_st with storage hipochallenge

# remove local data
data remove storage minecraft:hipochallenge local_spirit_target
data remove storage minecraft:hipochallenge local_spirit_owner
data remove storage minecraft:hipochallenge local_spirit_uuid
