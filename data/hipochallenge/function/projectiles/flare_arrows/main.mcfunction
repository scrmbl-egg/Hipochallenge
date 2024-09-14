scoreboard objectives add local dummy

# the uuid is obtained to exclude the owner from being detected
execute on origin run data modify storage minecraft:hipochallenge local_owner_uuid set from entity @s UUID

# origin is actually the owner, thanks minecraft!
execute on origin run function hipochallenge:teams/get/get_enemy_team
# gives ownership of:
    # local_enemy_team
    
# NOTE: 
# detection while spectral arrow is in the air needs to detect enemies _ahead_ of it's current pos,
# so we get its motion and add the values to the current position in the detection function
data modify storage minecraft:hipochallenge local_arrow_motion_x set from entity @s Motion[0]
data modify storage minecraft:hipochallenge local_arrow_motion_y set from entity @s Motion[1]
data modify storage minecraft:hipochallenge local_arrow_motion_z set from entity @s Motion[2]

function hipochallenge:std/collision_box/get_box_data_and_offsets_from_consts {dx:RECON_K2_FLARE_ARROW_DETECTION_DX,dy:RECON_K2_FLARE_ARROW_DETECTION_DY,dz:RECON_K2_FLARE_ARROW_DETECTION_DZ}
# gives ownership of:
    # local_initial_x
    # local_initial_y
    # local_initial_z
    # local_offset_x
    # local_offset_y
    # local_offset_z
    # local_selector_dx
    # local_selector_dy
    # local_selector_dz


# next function sets $must_explode local to 1 if it finds nearby enemies
# in:
    # local_onwer_uuid
    # local_enemy_team
    # local_arrow_motion_x
    # local_arrow_motion_y
    # local_arrow_motion_z
    # local_initial_x
    # local_initial_y
    # local_initial_z
    # local_offset_dx
    # local_offset_dy
    # local_offset_dz
    # local_selector_dx
    # local_selector_dy
    # local_selector_dz
function hipochallenge:projectiles/flare_arrows/detection/detect_enemies_in_box_st with storage minecraft:hipochallenge

# if it never finds an enemy, explode directly when arrow hits a surface
execute if entity @s[nbt={shake:1b}] run scoreboard players set $must_explode local 1

# in:
    # local_owner_uuid
    # local_enemy_team
execute if score $must_explode local matches 1 run function hipochallenge:projectiles/flare_arrows/explode_st with storage minecraft:hipochallenge

# free memory
scoreboard objectives remove local
data remove storage minecraft:hipochallenge local_owner_uuid
data remove storage minecraft:hipochallenge local_enemy_team
data remove storage minecraft:hipochallenge local_arrow_motion_x
data remove storage minecraft:hipochallenge local_arrow_motion_y
data remove storage minecraft:hipochallenge local_arrow_motion_z
data remove storage minecraft:hipochallenge local_initial_x
data remove storage minecraft:hipochallenge local_initial_y
data remove storage minecraft:hipochallenge local_initial_z
data remove storage minecraft:hipochallenge local_offset_dx
data remove storage minecraft:hipochallenge local_offset_dy
data remove storage minecraft:hipochallenge local_offset_dz
data remove storage minecraft:hipochallenge local_selector_dx
data remove storage minecraft:hipochallenge local_selector_dy
data remove storage minecraft:hipochallenge local_selector_dz