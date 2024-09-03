# storage:
    # local_interaction_owner_uuid
    # local_interaction_team
    # local_enemy_team

# TODO: do hardcoded team checks, due to neutral vs neutral resulting in a successful parry

scoreboard objectives add local_1 dummy

# team1 vs team1 (fail)

# team1 vs team2 (pass)

# team2 vs team1 (pass)

# team2 vs team2 (fail)

# neutral vs neutral (pass)

scoreboard objectives remove local_1