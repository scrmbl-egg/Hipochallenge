# storage:
    # local_owner_uuid
    # local_enemy_team
    # local_arrow_motion_x
    # local_arrow_motion_y
    # local_arrow_motion_z

# WARNING: use HIGH PERFORMANCE selectors. when low performance selectors are used, the arrows
# lag mid-air
# TODO: change selectors to players

# we do two checks, one in the current position, and another in the arrow's next position.
# this, while a bit imprecise, allows for more reliable detection with such a fast entity


$execute at @s run function hipochallenge:std/aabb/cast_from_consts {selector:"@e[type=armor_stand,nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team)]",dx_const:"RECON_K2_FLARE_ARROW_DETECTION_DX",dy_const:"RECON_K2_FLARE_ARROW_DETECTION_DY",dz_const:"RECON_K2_FLARE_ARROW_DETECTION_DZ",cmd:"scoreboard players set $must_explode local 1"}


$execute at @s positioned ~$(local_arrow_motion_x) ~$(local_arrow_motion_y) ~$(local_arrow_motion_z) run function hipochallenge:std/aabb/cast_from_consts {selector:"@e[type=armor_stand,nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team)]",dx_const:"RECON_K2_FLARE_ARROW_DETECTION_DX",dy_const:"RECON_K2_FLARE_ARROW_DETECTION_DY",dz_const:"RECON_K2_FLARE_ARROW_DETECTION_DZ",cmd:"scoreboard players set $must_explode local 1"}