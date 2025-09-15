#>core_hc:score/remove_all
#
# Removes all scores in the datapack

function hipochallenge:msg/debug/send_info { \
    text:"\"Removing score objectives...\"", \
}

scoreboard objectives remove hc.Id

## ENTITY LIFETIMES
scoreboard objectives remove hc.LifeTimer

## TIMED MECHANICS
scoreboard objectives remove hc.SilenceTimer
#scoreboard objectives remove hc.DetectionTimer
scoreboard objectives remove hc.InCombatTimer
scoreboard objectives remove hc.SuppressionTimer

## (PLAYER) LIST INFORMATION
scoreboard objectives remove hc.ListInfo

## CLASS, KIT & PERK
scoreboard objectives remove hc.Class
scoreboard objectives remove hc.Kit
scoreboard objectives remove hc.Perk

## LOGIN/LEAVING
scoreboard objectives remove hc.HasLeft

## HEALTH, DEATH & KILLS
scoreboard objectives remove hc.Health
scoreboard objectives remove hc.PlayerKillCount
scoreboard objectives remove hc.DeathCount
scoreboard objectives remove hc.Points
scoreboard objectives remove hc.IsDead
scoreboard objectives remove hc.HasKilled

## ITEMS AND ABILITIES
scoreboard objectives remove hc.TankKit1GoatHornCooldown
scoreboard objectives remove hc.TankKit1CastleCooldown
scoreboard objectives remove hc.TankKit2GoatHornCooldown
scoreboard objectives remove hc.TankKit2GoatHornNearbyEnemies
scoreboard objectives remove hc.TankKit2GoatHornRecoveryTicks
scoreboard objectives remove hc.TankKit2TridentCooldown
scoreboard objectives remove hc.TankKit3GoatHornCooldown
scoreboard objectives remove hc.TankKit3BubbleShieldCooldown
scoreboard objectives remove hc.TankKit3RedirectSpiritCooldown
scoreboard objectives remove hc.TankPerk1NutritiousMealCooldown
scoreboard objectives remove hc.MarksmanKit1NewProjectileCooldown
scoreboard objectives remove hc.MarksmanKit1ArchersPotionCooldown
scoreboard objectives remove hc.MarksmanKit1SmokeArrowCrossbowCooldown
scoreboard objectives remove hc.MarksmanKit2NewProjectileCooldown
scoreboard objectives remove hc.MarksmanKit3NewProjectileCooldown
scoreboard objectives remove hc.MarksmanKit3PistolCooldown
scoreboard objectives remove hc.MarksmanKit3ElDiabloBulletCooldown
scoreboard objectives remove hc.AssassinKit1DuelistSwordParryCooldown
scoreboard objectives remove hc.AssassinKit1ParryInteractionRelativePosX
scoreboard objectives remove hc.AssassinKit1ParryInteractionRelativePosY
scoreboard objectives remove hc.AssassinKit1ParryInteractionRelativePosZ
scoreboard objectives remove hc.AssassinKit1EnhancedDuelistSwordCooldown
scoreboard objectives remove hc.AssassinKit1CrystalAmuletCooldown
scoreboard objectives remove hc.AssassinKit2StunMechanismCooldown
scoreboard objectives remove hc.AssassinKit3RepulsingRodCooldown
scoreboard objectives remove hc.AssassinKit3MagicFeatherCooldown
scoreboard objectives remove hc.AssassinKit3TeleportationMarkCooldown
scoreboard objectives remove hc.SupportKit1SnowSentinelCooldown
scoreboard objectives remove hc.SupportKit1LevitationBombCooldown
scoreboard objectives remove hc.SupportKit1GravityWellCooldown
scoreboard objectives remove hc.SupportKit2HealingRodCooldown
scoreboard objectives remove hc.SupportKit2CleansingProjectileCooldown
scoreboard objectives remove hc.SupportKit2SlownessTrapCooldown
scoreboard objectives remove hc.SupportKit3UnstableTotemCooldown
scoreboard objectives remove hc.SupportKit3EvilEyeCooldown
scoreboard objectives remove hc.ReconKit1BlindnessSentinelCooldown
scoreboard objectives remove hc.ReconKit1FlashBombCooldown
scoreboard objectives remove hc.ReconKit1LowVisibilityAreaCooldown
scoreboard objectives remove hc.ReconKit2FlareArrowCooldown
scoreboard objectives remove hc.ReconKit2TrackersPotionCooldown
scoreboard objectives remove hc.ReconKit2RevealingSentinelCooldown
scoreboard objectives remove hc.ReconKit3PortalCooldown
scoreboard objectives remove hc.ReconKit3DeceptionEffigyCooldown
scoreboard objectives remove hc.AssaultKit1TickingBombCooldown
scoreboard objectives remove hc.AssaultKit1KnockbackBombCooldown
scoreboard objectives remove hc.AssaultKit1SmokeBombCooldown
scoreboard objectives remove hc.AssaultKit2HarpoonCooldown
scoreboard objectives remove hc.AssaultKit2VoidArrowCooldown
scoreboard objectives remove hc.AssaultKit3AssaultShieldCooldown
scoreboard objectives remove hc.AssaultKit3PushingProjectileCooldown

## ITEM USAGE
scoreboard objectives remove hc.BowShot

## TRIGGERS

## NOTE:
# Triggers don't have the "hc." prefix. This is so that they can be typed with
# ease for users.

scoreboard objectives remove warp
scoreboard objectives remove leave
scoreboard objectives remove join
