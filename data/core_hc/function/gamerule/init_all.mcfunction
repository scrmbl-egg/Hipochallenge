#>core_hc:gamerule/init_all
#
# Initialises all gamerules in the minigame.
#
# @returns
#   Result: 1 if all gamerules are properly set.

function hipochallenge:msg/debug/send_info {text:"\"Setting gamerules...\""}

## TODO: uncomment all commented gamerules when the minigame is released

gamerule allowFireTicksAwayFromPlayer false
gamerule announceAdvancements false
gamerule blockExplosionDropDecay false
#gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 32768
gamerule disableElytraMovementCheck false
gamerule disablePlayerMovementCheck false
gamerule disableRaids true
## NOTE: day and night cycle shouldn't be a problem if handled well
#gamerule doDaylightCycle true
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule doWardenSpawning false
gamerule drowningDamage false
gamerule enderPearlsVanishOnDeath true
gamerule fallDamage false
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule globalSoundEvents false
gamerule keepInventory true
gamerule lavaSourceConversion false
# TODO: investigate locatorBar capabilities
#gamerule locatorBar true
gamerule logAdminCommands false
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536
gamerule maxEntityCramming 24
gamerule mobExplosionDropDecay false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule playersSleepingPercentage 200
gamerule projectilesCanBreakBlocks false
gamerule randomTickSpeed 0
#gamerule reducedDebugInfo true
#gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule snowAccumulationHeight 1
gamerule spawnChunkRadius 0
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplosionDropDecay false
gamerule universalAnger false
gamerule waterSourceConversion true

## __KEEP AT BOTTOM OF FILE__
# return 1 for success
return 1
