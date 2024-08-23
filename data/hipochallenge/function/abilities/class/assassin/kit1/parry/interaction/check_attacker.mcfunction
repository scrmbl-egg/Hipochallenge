# create score to store results
scoreboard objectives add local dummy

# get interaction's team (through its marker passenger)
execute as @s run data modify storage minecraft:hipochallenge local_interaction_team set from entity @s Passengers[0].data.team
execute as @s run data modify storage minecraft:hipochallenge local_interaction_owner_uuid set from entity @s Passengers[0].data.owner

execute on attacker as @s run function hipochallenge:teams/get/get_enemy_team
# gives ownership of:
    # local_enemy_team

# if interaction has attacker, check if attacker is in the same team as the interaction's team
# in:
    # local_interaction_team
    # local_enemy_team
execute as @s if data entity @s attack run execute store success score $attacker_is_enemy local run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/is_attacker_interactions_enemy_st with storage minecraft:hipochallenge

# if attacker is enemy of interaction's team, run attacker commands
execute if score $attacker_is_enemy local matches 1 on attacker run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/on_hit/run_attacker_commands

# if attacker is enemy of interaction's team, run owner commands
# in:
    # local_interaction_owner_uuid
execute if score $attacker_is_enemy local matches 1 run function hipochallenge:abilities/class/assassin/kit1/parry/interaction/on_hit/run_owner_commands_st with storage minecraft:hipochallenge

execute if data entity @s attack run data remove entity @s attack

# free memory and remove scores
data remove storage minecraft:hipochallenge local_interaction_team
data remove storage minecraft:hipochallenge local_interaction_owner_uuid
data remove storage minecraft:hipochallenge local_enemy_team
scoreboard objectives remove local