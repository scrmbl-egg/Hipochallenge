# storage:
    # TANK_K1_CASTLING_CD_TICKS
    # local_player_team

# TODO: Add support for one of these two options: 1. Conserve yaw and pitch when teleporting, or 2. Exchange yaw and pitch of teleported players.

summon marker ~ ~ ~ {Tags:["temp_castle_marker","local"]}

$execute at @s run tag @a[limit=1,sort=furthest,team=$(local_player_team),tag=!dead] add temp_castle_target

tp @s @a[limit=1,tag=temp_castle_target]
tp @a[limit=1,tag=temp_castle_target] @e[type=marker,tag=temp_castle_marker,limit=1]
kill @e[type=marker,tag=temp_castle_marker,limit=1]

execute at @s run function hipochallenge:vfx/abilities/tank/kit1/castle
execute at @a[limit=1,tag=temp_castle_target] run function hipochallenge:vfx/abilities/tank/kit1/castle

tag @a remove temp_castle_target

$scoreboard players set @s tank_kit1_castle_cd $(TANK_K1_CASTLING_CD_TICKS)