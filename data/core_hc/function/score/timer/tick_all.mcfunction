#>core_hc:score/timer/tick_all
#
# Decreases 1 unit from all scores that are meant to represent timers.

# temporary entity lifetimes
## NOTE:
# There's two routes we could take regarding the following commands:
#   1: We could change the selector to @e so that ANY entity with life_timer
#   score has its lifetime updated.
#       PROS: no individual entity handling, and all entities are handled at
#       exactly the same time
#       CONS: could probably cause AWFUL performance
#   2: Remove it entirely
#       PROS: BETTER performance, since we are capable of filtering more
#       precisely what entities actually decrease their lifetime
#       CONS: every entity that needs a lifetime must be individually handled
#       and that could mean an unclear order.
execute as @e[type=!minecraft:player,scores={hc.LifeTimer=1..}] \
    run scoreboard players remove @s hc.LifeTimer 1

# mechanics
execute as @a[scores={hc.InCombatTimer=1..}] run scoreboard players remove @s hc.InCombatTimer 1
execute as @a[scores={hc.SilenceTimer=1..}] run scoreboard players remove @s hc.SilenceTimer 1
execute as @a[scores={hc.InCombatTimer=1..}] run scoreboard players remove @s hc.InCombatTimer 1
execute as @a[scores={suppression_timer=1..}] run scoreboard players remove @s suppression_timer 1

# cooldown timers

# TODO: Check if all cooldowns are handled
execute as @a[scores={hc.TankKit1GoatHornCooldown=1..}] run scoreboard players remove @s hc.TankKit1GoatHornCooldown 1
execute as @a[scores={hc.TankKit1CastleCooldown=1..}] run scoreboard players remove @s hc.TankKit1CastleCooldown 1
execute as @a[scores={hc.TankKit2GoatHornCooldown=1..}] run scoreboard players remove @s hc.TankKit2GoatHornCooldown 1
execute as @a[scores={hc.TankKit2GoatHornRecoveryTicks=1..}] run scoreboard players remove @s hc.TankKit2GoatHornRecoveryTicks 1
execute as @a[scores={hc.TankKit2TridentCooldown=1..}] run scoreboard players remove @s hc.TankKit2TridentCooldown 1
execute as @a[scores={hc.TankKit3GoatHornCooldown=1..}] run scoreboard players remove @s hc.TankKit3GoatHornCooldown 1
execute as @a[scores={hc.TankKit3BubbleShieldCooldown=1..}] run scoreboard players remove @s hc.TankKit3BubbleShieldCooldown 1
execute as @a[scores={hc.TankKit3RedirectSpiritCooldown=1..}] run scoreboard players remove @s hc.TankKit3RedirectSpiritCooldown 1
execute as @a[scores={hc.TankPerk1NutritiousMealCooldown=1..}] run scoreboard players remove @s hc.TankPerk1NutritiousMealCooldown 1
execute as @a[scores={hc.MarksmanKit1NewProjectileCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit1NewProjectileCooldown 1
execute as @a[scores={hc.MarksmanKit1ArchersPotionCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit1ArchersPotionCooldown 1
execute as @a[scores={hc.MarksmanKit1SmokeArrowCrossbowCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit1SmokeArrowCrossbowCooldown 1
execute as @a[scores={hc.MarksmanKit2NewProjectileCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit2NewProjectileCooldown 1
execute as @a[scores={hc.MarksmanKit3NewProjectileCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit3NewProjectileCooldown 1
execute as @a[scores={hc.MarksmanKit3PistolCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit3PistolCooldown 1
execute as @a[scores={hc.MarksmanKit3ElDiabloBulletCooldown=1..}] run scoreboard players remove @s hc.MarksmanKit3ElDiabloBulletCooldown 1
execute as @a[scores={hc.AssassinKit1DuelistSwordParryCooldown=1..}] run scoreboard players remove @s hc.AssassinKit1DuelistSwordParryCooldown 1
execute as @a[scores={hc.AssassinKit1EnhancedDuelistSwordCooldown=1..}] run scoreboard players remove @s hc.AssassinKit1EnhancedDuelistSwordCooldown 1
execute as @a[scores={hc.AssassinKit1CrystalAmuletCooldown=1..}] run scoreboard players remove @s hc.AssassinKit1CrystalAmuletCooldown 1
execute as @a[scores={hc.AssassinKit2StunMechanismCooldown=1..}] run scoreboard players remove @s hc.AssassinKit2StunMechanismCooldown 1
execute as @a[scores={hc.AssassinKit3RepulsingRodCooldown=1..}] run scoreboard players remove @s hc.AssassinKit3RepulsingRodCooldown 1
execute as @a[scores={hc.AssassinKit3MagicFeatherCooldown=1..}] run scoreboard players remove @s hc.AssassinKit3MagicFeatherCooldown 1
execute as @a[scores={hc.AssassinKit3TeleportationMarkCooldown=1..}] run scoreboard players remove @s hc.AssassinKit3TeleportationMarkCooldown 1
execute as @a[scores={hc.SupportKit1SnowSentinelCooldown=1..}] run scoreboard players remove @s hc.SupportKit1SnowSentinelCooldown 1
execute as @a[scores={hc.SupportKit1LevitationBombCooldown=1..}] run scoreboard players remove @s hc.SupportKit1LevitationBombCooldown 1
execute as @a[scores={hc.SupportKit1GravityWellCooldown=1..}] run scoreboard players remove @s hc.SupportKit1GravityWellCooldown 1
execute as @a[scores={hc.SupportKit2HealingRodCooldown=1..}] run scoreboard players remove @s hc.SupportKit2HealingRodCooldown 1
execute as @a[scores={hc.SupportKit2CleansingProjectileCooldown=1..}] run scoreboard players remove @s hc.SupportKit2CleansingProjectileCooldown 1
execute as @a[scores={hc.SupportKit2SlownessTrapCooldown=1..}] run scoreboard players remove @s hc.SupportKit2SlownessTrapCooldown 1
execute as @a[scores={hc.SupportKit3UnstableTotemCooldown=1..}] run scoreboard players remove @s hc.SupportKit3UnstableTotemCooldown 1
execute as @a[scores={hc.SupportKit3EvilEyeCooldown=1..}] run scoreboard players remove @s hc.SupportKit3EvilEyeCooldown 1
execute as @a[scores={hc.ReconKit1BlindnessSentinelCooldown=1..}] run scoreboard players remove @s hc.ReconKit1BlindnessSentinelCooldown 1
execute as @a[scores={hc.ReconKit1FlashBombCooldown=1..}] run scoreboard players remove @s hc.ReconKit1FlashBombCooldown 1
execute as @a[scores={hc.ReconKit1LowVisibilityAreaCooldown=1..}] run scoreboard players remove @s hc.ReconKit1LowVisibilityAreaCooldown 1
execute as @a[scores={hc.ReconKit2FlareArrowCooldown=1..}] run scoreboard players remove @s hc.ReconKit2FlareArrowCooldown 1
execute as @a[scores={hc.ReconKit2TrackersPotionCooldown=1..}] run scoreboard players remove @s hc.ReconKit2TrackersPotionCooldown 1
execute as @a[scores={hc.ReconKit2RevealingSentinelCooldown=1..}] run scoreboard players remove @s hc.ReconKit2RevealingSentinelCooldown 1
execute as @a[scores={hc.ReconKit3PortalCooldown=1..}] run scoreboard players remove @s hc.ReconKit3PortalCooldown 1
execute as @a[scores={hc.ReconKit3DeceptionEffigyCooldown=1..}] run scoreboard players remove @s hc.ReconKit3DeceptionEffigyCooldown 1
execute as @a[scores={hc.AssaultKit1TickingBombCooldown=1..}] run scoreboard players remove @s hc.AssaultKit1TickingBombCooldown 1
execute as @a[scores={hc.AssaultKit1KnockbackBombCooldown=1..}] run scoreboard players remove @s hc.AssaultKit1KnockbackBombCooldown 1
execute as @a[scores={hc.AssaultKit1SmokeBombCooldown=1..}] run scoreboard players remove @s hc.AssaultKit1SmokeBombCooldown 1
execute as @a[scores={hc.AssaultKit2HarpoonCooldown=1..}] run scoreboard players remove @s hc.AssaultKit2HarpoonCooldown 1
execute as @a[scores={hc.AssaultKit2VoidArrowCooldown=1..}] run scoreboard players remove @s hc.AssaultKit2VoidArrowCooldown 1
execute as @a[scores={hc.AssaultKit3AssaultShieldCooldown=1..}] run scoreboard players remove @s hc.AssaultKit3AssaultShieldCooldown 1
execute as @a[scores={hc.AssaultKit3PushingProjectileCooldown=1..}] run scoreboard players remove @s hc.AssaultKit3PushingProjectileCooldown 1

# tick extension timers
function #extension_hc:score/timer/tick
