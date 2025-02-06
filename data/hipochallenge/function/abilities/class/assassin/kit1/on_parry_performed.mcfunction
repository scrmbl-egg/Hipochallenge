advancement revoke @s only hipochallenge:used_items/class/assassin/kit1/used_duelist_sword

# TODO: investigate next minecraft version's new weapon blocking component.
# this could probably make it so that, if a player blocks an attack with a sword
# the command already executes on the attacker without needing to summon an
# interaction

# set entity range attribute modifiers (must last until hitbox is gone)
function hipochallenge:attributes/modifiers/class/assassin/kit1/parrying/add

# get self uuid
data modify storage minecraft:hipochallenge local_self_uuid set from entity @s UUID

# get team
function hipochallenge:teams/get/get_self_team {dest_st:"minecraft:hipochallenge",dest_path:"local_self_team"}
# gives ownership of:
    # local_self_team

# summon interaction box
# in:
    # local_self_uuid
    # local_self_team
function hipochallenge:abilities/class/assassin/kit1/parry/summon_interaction_st with storage minecraft:hipochallenge

data remove storage minecraft:hipochallenge local_self_uuid
data remove storage minecraft:hipochallenge local_self_team
