# storage:
    # local_interaction_owner_uuid

advancement grant @a only hipochallenge:combat/assassin/kit1/successful_parry/root

function hipochallenge:attributes/modifiers/class/assassin/kit1/parrying/remove

$execute as @n[nbt={UUID:$(local_interaction_owner_uuid)},type=player] run say "he hecho parry"