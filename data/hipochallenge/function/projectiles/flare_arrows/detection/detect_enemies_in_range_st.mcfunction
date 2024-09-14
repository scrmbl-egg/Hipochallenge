# storage:
    # local_self_uuid
    # local_enemy_team
    # RECON_K2_FLARE_ARROW_DETECTION_RANGE

$execute if entity @a[nbt=!{UUID:$(local_self_uuid)},team=$(local_enemy_team),distance=..$(RECON_K2_FLARE_ARROW_DETECTION_RANGE),gamemode=!spectator,tag=!dead] run scoreboard players set $must_explode local 1

# NOTE: apparently storing success of the function doesn't work if it uses macros... sigh
# scoreboard is set for caller function