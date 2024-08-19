
# construct array
data modify storage minecraft:hipochallenge arr set value [1,0,0,0,1]

function hipochallenge:std/map/run {array_name:arr,function_st:'hipochallenge:test/test2'}

data remove storage minecraft:hipochallenge arr