# params:
    # range
    # selector

data modify storage minecraft:hipochallenge local_sphere_selector_targets set value []

$execute as @s anchored eyes positioned ^ ^ ^$(range) run execute as $(selector) at @s run data modify storage minecraft:hipochallenge local_sphere_selector_targets append from entity @s UUID