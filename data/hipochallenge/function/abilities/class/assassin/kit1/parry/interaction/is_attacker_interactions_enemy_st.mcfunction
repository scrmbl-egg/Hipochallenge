# storage:
    # local_interaction_team
    # local_enemy_team

$execute if entity @s[team=$(local_interaction_team)] on attacker run execute if entity @s[team=$(local_enemy_team)]