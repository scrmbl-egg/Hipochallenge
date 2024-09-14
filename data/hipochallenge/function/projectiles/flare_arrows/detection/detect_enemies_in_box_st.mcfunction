# storage:
    # local_owner_uuid
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

scoreboard objectives add local_1 dummy

data modify storage minecraft:hipochallenge local_enemies_array set value []

$tellraw @a "local_owner_uuid: $(local_owner_uuid)"
$tellraw @a "local_enemy_team: $(local_enemy_team)"
$tellraw @a "local_arrow_motion_x: $(local_arrow_motion_x)"
$tellraw @a "local_arrow_motion_y: $(local_arrow_motion_y)"
$tellraw @a "local_arrow_motion_z: $(local_arrow_motion_z)"
$tellraw @a "local_initial_x: $(local_initial_x)"
$tellraw @a "local_initial_y: $(local_initial_y)"
$tellraw @a "local_initial_z: $(local_initial_z)"
$tellraw @a "local_offset_dx: $(local_offset_dx)"
$tellraw @a "local_offset_dy: $(local_offset_dy)"
$tellraw @a "local_offset_dz: $(local_offset_dz)"
$tellraw @a "local_selector_dx: $(local_selector_dx)"
$tellraw @a "local_selector_dy: $(local_selector_dy)"
$tellraw @a "local_selector_dz: $(local_selector_dz)"


# TODO: limit selectors to players only when fully tested

# FIXME: collision box checking should probably be done in a separate function
# i gotta fix this f*cked up shit

# two checks are done for security, probably helps when arrows are spawned right in front
# of possible targets
$execute at @s positioned ~$(local_initial_x) ~$(local_initial_y) ~$(local_initial_z) as @e[nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team),gamemode=!spectator,dx=$(local_selector_dx),dy=$(local_selector_dy),dz=$(local_selector_dy)] positioned ~$(local_offset_dx) ~$(local_offset_dy) ~$(local_offset_dz) as @s[dx=$(local_selector_dx),dy=$(local_selector_dy),dz=$(local_selector_dy)] run data modify storage minecraft:hipochallenge local_enemies_array append from entity @s UUID

$execute at @s positioned ~$(local_initial_x) ~$(local_initial_y) ~$(local_initial_z) run particle happy_villager ~ ~ ~ 0 0 0 0 1 force

$execute at @s positioned ~$(local_arrow_motion_x) ~$(local_arrow_motion_y) ~$(local_arrow_motion_z) positioned ~$(local_initial_x) ~$(local_initial_y) ~$(local_initial_z) as @e[nbt=!{UUID:$(local_owner_uuid)},team=$(local_enemy_team),gamemode=!spectator,dx=$(local_selector_dx),dy=$(local_selector_dy),dz=$(local_selector_dy)] positioned ~$(local_offset_dx) ~$(local_offset_dy) ~$(local_offset_dz) as @s[dx=$(local_selector_dx),dy=$(local_selector_dy),dz=$(local_selector_dy)] run data modify storage minecraft:hipochallenge local_enemies_array append from entity @s UUID

# get size of enemy array
execute store result score $enemy_array_size local_1 run data get storage minecraft:hipochallenge local_enemies_array

# if size is > 1, set explosion score to 1
execute if score $enemy_array_size local_1 matches 1.. run scoreboard players set $must_explode local 1

# free memory
scoreboard objectives remove local_1
data remove storage minecraft:hipochallenge local_enemies_array

# NOTE: apparently storing success of the function doesn't work if it uses macros... sigh
# scoreboard is set for caller function