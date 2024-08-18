# storage:
    # local_players_enemy_team
    # TANK_K2_HORN_RADIUS

scoreboard players set @s tank_kit2_goat_horn_nearby_enemies 0
$execute at @a[distance=..$(TANK_K2_HORN_RADIUS),team=!$(local_players_enemy_team)] run scoreboard players add @s tank_kit2_goat_horn_nearby_enemies 1