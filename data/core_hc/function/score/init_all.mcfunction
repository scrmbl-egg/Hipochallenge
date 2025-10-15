#>core_hc:score/init_all
#
# Initialises all scores in the datapack
#
# @returns
#   Result: 1 if all scores are initialised

function hc:msg/debug/send_info { \
    text:"\"Initialising score objectives...\"", \
}

## UNIQUE PLAYER ID
scoreboard objectives add hc.Id dummy

## ENTITY LIFETIMES
scoreboard objectives add hc.LifeTimer dummy

## TIMED MECHANICS
scoreboard objectives add hc.SilenceTimer dummy
#scoreboard objectives add hc.DetectionTimer dummy
scoreboard objectives add hc.InCombatTimer dummy
scoreboard objectives add hc.SuppressionTimer dummy

## (PLAYER) LIST INFORMATION
scoreboard objectives add hc.ListInfo dummy

## CLASS, KIT & PERK
scoreboard objectives add hc.Class dummy
scoreboard objectives add hc.Kit dummy
scoreboard objectives add hc.Perk dummy

## LOGIN/LEAVING
scoreboard objectives add hc.HasLeft minecraft.custom:minecraft.leave_game

## HEALTH, DEATH & KILLS
scoreboard objectives add hc.Health health {text:"\u2764",color:"#db0000"}
scoreboard objectives add hc.PlayerKillCount playerKillCount {text:"\ud83d\udde1",color:"white"}
scoreboard objectives add hc.DeathCount deathCount {text:"\u2620",color:"white"}
scoreboard objectives add hc.Points dummy {text:"\u2605",color:"gold"}
scoreboard objectives add hc.IsDead deathCount
scoreboard objectives add hc.HasKilled playerKillCount

## ITEMS AND ABILITIES
scoreboard objectives add hc.TankKit1GoatHornCooldown dummy
scoreboard objectives add hc.TankKit1CastleCooldown dummy
scoreboard objectives add hc.TankKit2GoatHornCooldown dummy
scoreboard objectives add hc.TankKit2GoatHornNearbyEnemies dummy
scoreboard objectives add hc.TankKit2GoatHornRecoveryTicks dummy
scoreboard objectives add hc.TankKit2TridentCooldown dummy
scoreboard objectives add hc.TankKit3GoatHornCooldown dummy
scoreboard objectives add hc.TankKit3BubbleShieldCooldown dummy
scoreboard objectives add hc.TankKit3RedirectSpiritCooldown dummy
scoreboard objectives add hc.TankPerk1NutritiousMealCooldown dummy
scoreboard objectives add hc.MarksmanKit1NewProjectileCooldown dummy
scoreboard objectives add hc.MarksmanKit1ArchersPotionCooldown dummy
scoreboard objectives add hc.MarksmanKit1SmokeArrowCrossbowCooldown dummy
scoreboard objectives add hc.MarksmanKit2NewProjectileCooldown dummy
scoreboard objectives add hc.MarksmanKit3NewProjectileCooldown dummy
scoreboard objectives add hc.MarksmanKit3PistolCooldown dummy
scoreboard objectives add hc.MarksmanKit3ElDiabloBulletCooldown dummy
scoreboard objectives add hc.AssassinKit1DuelistSwordParryCooldown dummy
scoreboard objectives add hc.AssassinKit1ParryInteractionRelativePosX dummy
scoreboard objectives add hc.AssassinKit1ParryInteractionRelativePosY dummy
scoreboard objectives add hc.AssassinKit1ParryInteractionRelativePosZ dummy
scoreboard objectives add hc.AssassinKit1EnhancedDuelistSwordCooldown dummy
scoreboard objectives add hc.AssassinKit1CrystalAmuletCooldown dummy
scoreboard objectives add hc.AssassinKit2StunMechanismCooldown dummy
scoreboard objectives add hc.AssassinKit3RepulsingRodCooldown dummy
scoreboard objectives add hc.AssassinKit3MagicFeatherCooldown dummy
scoreboard objectives add hc.AssassinKit3TeleportationMarkCooldown dummy
scoreboard objectives add hc.SupportKit1SnowSentinelCooldown dummy
scoreboard objectives add hc.SupportKit1LevitationBombCooldown dummy
scoreboard objectives add hc.SupportKit1GravityWellCooldown dummy
scoreboard objectives add hc.SupportKit2HealingRodCooldown dummy
scoreboard objectives add hc.SupportKit2CleansingProjectileCooldown dummy
scoreboard objectives add hc.SupportKit2SlownessTrapCooldown dummy
scoreboard objectives add hc.SupportKit3UnstableTotemCooldown dummy
scoreboard objectives add hc.SupportKit3EvilEyeCooldown dummy
scoreboard objectives add hc.ReconKit1BlindnessSentinelCooldown dummy
scoreboard objectives add hc.ReconKit1FlashBombCooldown dummy
scoreboard objectives add hc.ReconKit1LowVisibilityAreaCooldown dummy
scoreboard objectives add hc.ReconKit2FlareArrowCooldown dummy
scoreboard objectives add hc.ReconKit2TrackersPotionCooldown dummy
scoreboard objectives add hc.ReconKit2RevealingSentinelCooldown dummy
scoreboard objectives add hc.ReconKit3PortalCooldown dummy
scoreboard objectives add hc.ReconKit3DeceptionEffigyCooldown dummy
scoreboard objectives add hc.AssaultKit1TickingBombCooldown dummy
scoreboard objectives add hc.AssaultKit1KnockbackBombCooldown dummy
scoreboard objectives add hc.AssaultKit1SmokeBombCooldown dummy
scoreboard objectives add hc.AssaultKit2HarpoonCooldown dummy
scoreboard objectives add hc.AssaultKit2VoidArrowCooldown dummy
scoreboard objectives add hc.AssaultKit3AssaultShieldCooldown dummy
scoreboard objectives add hc.AssaultKit3PushingProjectileCooldown dummy

## ITEM USAGE
scoreboard objectives add hc.BowShot minecraft.used:minecraft.bow

## MODIFY DISPLAY NAMES

## NOTE:
# Display names are added after creation, so that existing scoreboards during
# reload are properly updated.

scoreboard objectives modify hc.Health displayname {text:"\u2764",color:"#db0000"}
scoreboard objectives modify hc.PlayerKillCount displayname {text:"\ud83d\udde1",color:"white"}
scoreboard objectives modify hc.DeathCount displayname {text:"\u2620",color:"white"}
scoreboard objectives modify hc.Points displayname {text:"\u2605",color:"gold"}

## INITIALISE SCORES
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

## EXTENSION SCORES
function #extension_hc:score/init

## __ KEEP AT BOTTOM OF FILE __
# return 1 for success
return 1
