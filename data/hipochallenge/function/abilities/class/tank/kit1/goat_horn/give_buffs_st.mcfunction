# params:
    # team
    # radius
    # duration_seconds
    # amplifier

# storage:
    # local_self_team
    # TANK_K1_HORN_RADIUS
    # TANK_K1_HORN_ABSORPTION_DURATION_SECONDS
    # TANK_K1_HORN_ABSORPTION_AMPLIFIER

$effect give @a[team=$(local_self_team),distance=..$(TANK_K1_HORN_RADIUS)] absorption $(TANK_K1_HORN_ABSORPTION_DURATION_SECONDS) $(TANK_K1_HORN_ABSORPTION_AMPLIFIER) false
