# storage:
    # local_enemy_team
    # TANK_K2_HORN_RADIUS
    # TEAM_SIZE (used to limit the effects in training mode)

$execute as @a[distance=..$(TANK_K2_HORN_RADIUS),team=$(local_enemy_team),limit=$(TEAM_SIZE),sort=nearest] run data modify storage minecraft:hipochallenge local_enemy_uuid_array append from entity @s UUID