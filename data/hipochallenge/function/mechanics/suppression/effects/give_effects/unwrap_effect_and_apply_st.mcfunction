# storage:
    # current_elem

$data modify storage minecraft:hipochallenge local_current_effect set value $(current_elem)

data modify storage minecraft:hipochallenge local_name set from storage minecraft:hipochallenge local_current_effect.name
data modify storage minecraft:hipochallenge local_amplifier set from storage minecraft:hipochallenge local_current_effect.amplifier
data modify storage minecraft:hipochallenge local_secs set from storage minecraft:hipochallenge local_current_effect.secs
data modify storage minecraft:hipochallenge local_hide set from storage minecraft:hipochallenge local_current_effect.hide

function hipochallenge:mechanics/suppression/effects/give_effects/apply_effect with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_current_effect
data remove storage minecraft:hipochallenge local_name
data remove storage minecraft:hipochallenge local_amplifier
data remove storage minecraft:hipochallenge local_secs
data remove storage minecraft:hipochallenge local_hide