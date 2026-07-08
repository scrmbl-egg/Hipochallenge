#>hc.core:score/add_all_objectives
#
# Adds all score objectives in the datapack.
#
# @returns
#   Result: 1 if all objectives are successfully added

function hc:msg/debug/send_info { \
    text:"\"Adding score objectives...\"", \
}

## ADD GLOBAL SCORES
# LOGIN/LEAVING
scoreboard objectives add hc.HasLeft minecraft.custom:minecraft.leave_game

# ENTITY LIFETIMES
scoreboard objectives add hc.LifeTimer dummy

# TIMED MECHANICS
scoreboard objectives add hc.SilenceTimer dummy
#scoreboard objectives add hc.DetectionTimer dummy
scoreboard objectives add hc.InCombatTimer dummy
scoreboard objectives add hc.SuppressionTimer dummy

# (PLAYER) LIST INFORMATION
scoreboard objectives add hc.ListInfo dummy

# CLASS, KIT & PERK
scoreboard objectives add hc.Class dummy
scoreboard objectives add hc.Kit dummy
scoreboard objectives add hc.Perk dummy

# HEALTH, DEATH & KILLS
scoreboard objectives add hc.Health health
scoreboard objectives add hc.PlayerKillCount playerKillCount
scoreboard objectives add hc.DeathCount deathCount
scoreboard objectives add hc.Points dummy
scoreboard objectives add hc.IsDead deathCount
scoreboard objectives add hc.HasKilled playerKillCount

# ITEM USAGE
# (no achievement trigger exists for shooting a bow)
scoreboard objectives add hc.BowShot minecraft.used:minecraft.bow

# ITEMS AND ABILITIES
function #hc.core:score/add_class_objectives

## MODIFY DISPLAY NAMES

## NOTE:
# Display names are added after creation, so that existing scoreboards during
# reload are properly updated.

# hc.Health
scoreboard objectives modify hc.Health displayname { \
    translate:"hc.score.health_representation", \
    fallback:"\u2764", \
    color:"#ed2626", \
    shadow_color:[0.25f, 0f, 0f, 1f], \
}

# hc.PlayerKillCount
scoreboard objectives modify hc.PlayerKillCount displayname { \
    translate:"hc.score.player_kill_count_representation", \
    fallback:"\u2694", \
    color:"white", \
    shadow_color:[0.25f, 0.25f, 0.25f, 0.8f], \
}

# hc.DeathCount
scoreboard objectives modify hc.DeathCount displayname { \
    translate:"hc.score.death_count_representation", \
    fallback:"\u2620", \
    color:"white", \
    shadow_color:[0.25f, 0.25f, 0.25f, 0.8f], \
}

# hc.Points
scoreboard objectives modify hc.Points displayname { \
    translate:"hc.score.points_representation", \
    fallback:"\u2666", \
    color:"gold", \
    shadow_color:[0.341f, 0.18f, 0.071f, 0.8f], \
}

## INITIALIZE SCORES
scoreboard players add @a hc.ListInfo 0
scoreboard players add @a hc.Class 0
scoreboard players add @a hc.Kit 0
scoreboard players add @a hc.Perk 0
#scoreboard players add @a hc.Health 0 (read-only, doesn't work)
scoreboard players add @a hc.PlayerKillCount 0
scoreboard players add @a hc.DeathCount 0
scoreboard players add @a hc.Points 0
scoreboard players add @a hc.IsDead 0
scoreboard players add @a hc.HasKilled 0

# init hc.Health score, for those that don't have a registered score value
execute as @a \
    unless entity @s[scores={hc.Health=-2147483648..2147483647}] \
    run \
    effect give @s minecraft:absorption 1 0 true

## ASSIGN/SET DISPLAYS
scoreboard objectives setdisplay list hc.ListInfo
scoreboard objectives setdisplay below_name hc.Health

## ADD EXTENSION SCORES
function #hc.extension:score/add_objectives

## __ KEEP AT BOTTOM OF FILE __
# return 1 for success
return 1
