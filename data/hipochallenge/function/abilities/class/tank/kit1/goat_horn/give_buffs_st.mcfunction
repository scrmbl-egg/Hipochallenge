# storage:
    # TANK_K1_HORN_RADIUS
    # TANK_K1_HORN_ABSORPTION_DURATION_SECONDS
    # TANK_K1_HORN_ABSORPTION_AMPLIFIER
    # local_players_team

$effect give @a[team=$(local_players_team),distance=..$(TANK_K1_HORN_RADIUS)] absorption $(TANK_K1_HORN_ABSORPTION_DURATION_SECONDS) $(TANK_K1_HORN_ABSORPTION_AMPLIFIER) false