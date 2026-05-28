#>core_hc:score/remove_all_objectives
#
# Removes all score objectives in the datapack

function hc:msg/debug/send_info { \
    text:"\"Removing score objectives...\"", \
}

# ENTITY LIFETIMES
scoreboard objectives remove hc.LifeTimer

# TIMED MECHANICS
scoreboard objectives remove hc.SilenceTimer
#scoreboard objectives remove hc.DetectionTimer
scoreboard objectives remove hc.InCombatTimer
scoreboard objectives remove hc.SuppressionTimer

# (PLAYER) LIST INFORMATION
scoreboard objectives remove hc.ListInfo

# CLASS, KIT & PERK
scoreboard objectives remove hc.Class
scoreboard objectives remove hc.Kit
scoreboard objectives remove hc.Perk

# LOGIN/LEAVING
scoreboard objectives remove hc.HasLeft

# HEALTH, DEATH & KILLS
scoreboard objectives remove hc.Health
scoreboard objectives remove hc.PlayerKillCount
scoreboard objectives remove hc.DeathCount
scoreboard objectives remove hc.Points
scoreboard objectives remove hc.IsDead
scoreboard objectives remove hc.HasKilled

# ITEM USAGE
scoreboard objectives remove hc.BowShot

# ITEMS AND ABILITIES
function #core_hc:score/remove_class_objectives

# EXTENSION OBJECTIVES
function #extension_hc:score/remove_objectives
