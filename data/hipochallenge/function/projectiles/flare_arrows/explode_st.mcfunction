# storage:
    # local_self_uuid
    # local_enemy_team
    # RECON_K2_FLARE_ARROW_EXPLOSION_RANGE

# show vfx
function hipochallenge:vfx/projectiles/flare_arrow/explode_vfx

# apply and detection effects to enemies in explosion range
$execute as @a[nbt=!{UUID:$(local_self_uuid)},team=$(local_enemy_team),distance=..$(RECON_K2_FLARE_ARROW_EXPLOSION_RANGE),gamemode=!spectator,tag=!dead] run function hipochallenge:projectiles/flare_arrows/explosion/give_detection_effects_st with storage minecraft:hipochallenge

# make arrow disappear with explosion
kill @s