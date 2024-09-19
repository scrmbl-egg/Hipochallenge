# storage:
    # local_owner_uuid
    # local_enemy_team
    # RECON_K2_FLARE_ARROW_EXPLOSION_RANGE

# show vfx
function hipochallenge:vfx/projectiles/flare_arrow/explode_vfx

# apply and detection effects to enemies in explosion range

# TODO: limit this selector to players when fully tested
$execute at @s as @e[type=armor_stand,nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team),distance=..$(RECON_K2_FLARE_ARROW_EXPLOSION_RANGE)] run function hipochallenge:projectiles/flare_arrows/explosion/give_detection_effects_st with storage minecraft:hipochallenge

kill @s