data modify storage minecraft:hipochallenge local_test set value "Mariete"

execute if function hipochallenge:std/self_reference/should_return run return fail

$say $(local_test)

data remove storage minecraft:hipochallenge local_test