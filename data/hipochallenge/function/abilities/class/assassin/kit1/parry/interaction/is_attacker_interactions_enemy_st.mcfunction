# storage:
    # local_interaction_owner_uuid
    # local_interaction_team
    # local_attacker_uuid
    # local_attacker_team

# TODO: Check if function parameters are redundant when checks are hardcoded

scoreboard objectives add local_1 dummy

# team1 parry vs team2 attack (pass)
$execute if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=$(local_interaction_team)] if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=team1] if entity @p[nbt={UUID:$(local_attacker_uuid)},team=$(local_attacker_team)] if entity @p[nbt={UUID:$(local_attacker_uuid)},team=team2] run scoreboard players set $test_passed local_1 1

# team2 parry vs team1 attack (pass)
$execute if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=$(local_interaction_team)] if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=team2] if entity @p[nbt={UUID:$(local_attacker_uuid)},team=$(local_attacker_team)] if entity @p[nbt={UUID:$(local_attacker_uuid)},team=team1] run scoreboard players set $test_passed local_1 1

# neutral parry vs neutral attack (pass)
$execute if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=$(local_interaction_team)] if entity @p[nbt={UUID:$(local_interaction_owner_uuid)},team=neutral] if entity @p[nbt={UUID:$(local_attacker_uuid)},nbt=!{UUID:$(local_interaction_owner_uuid)},team=$(local_attacker_team)] if entity @p[nbt={UUID:$(local_attacker_uuid)},nbt=!{UUID:$(local_interaction_owner_uuid)},team=neutral] run scoreboard players set $test_passed local_1 1

execute if score $test_passed local_1 matches 1 run scoreboard players set $attacker_is_enemy local 1

scoreboard objectives remove local_1