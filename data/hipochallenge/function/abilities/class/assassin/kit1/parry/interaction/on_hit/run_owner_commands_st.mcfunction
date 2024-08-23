# storage:
    # local_interaction_owner_uuid

# grant advancement to owner
$execute as @n[nbt={UUID:$(local_interaction_owner_uuid)},type=player] run advancement grant @s only hipochallenge:combat/assassin/kit1/successful_parry/root

# remove parrying attributes
function hipochallenge:attributes/modifiers/class/assassin/kit1/parrying/remove

# test say command
$execute as @n[nbt={UUID:$(local_interaction_owner_uuid)},type=player] run say "he hecho parry"