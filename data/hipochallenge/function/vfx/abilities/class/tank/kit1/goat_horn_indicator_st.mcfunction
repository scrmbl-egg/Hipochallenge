# storage:
    # TANK_K1_HORN_RADIUS
    # local_self_team
    # local_user_uuid

$execute at @a[distance=..$(TANK_K1_HORN_RADIUS),team=$(local_self_team),nbt=!{UUID:$(local_user_uuid)}] run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:0.5,to_color:[1.000,0.467,0.000]} ~ ~1 ~ 0.25 0.5 0.25 1 15 force @s