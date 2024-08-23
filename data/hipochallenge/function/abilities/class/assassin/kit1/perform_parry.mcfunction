advancement revoke @s only hipochallenge:used_items/class/assassin/kit1/used_duelist_sword

function hipochallenge:msg/debug/msg_info {msg:"parried"}

# set entity range attribute modifiers (lasts until )
function hipochallenge:attributes/modifiers/class/assassin/kit1/parrying/add

# get self uuid
data modify storage minecraft:hipochallenge local_self_uuid set from entity @s UUID

# get team
function hipochallenge:teams/get/get_self_team
# gives ownership of:
    # local_self_team

# summon interaction box
# in:
    # local_self_uuid
    # local_self_team
function hipochallenge:abilities/class/assassin/kit1/parry/summon_interaction with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_self_uuid
data remove storage minecraft:hipochallenge local_self_team