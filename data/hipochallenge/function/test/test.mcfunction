
# construct array
data modify storage minecraft:hipochallenge arr set value [1,0,0,0,1]

tellraw @s {"nbt":"arr[-1]","storage":"minecraft:hipochallenge"}

data remove storage minecraft:hipochallenge arr