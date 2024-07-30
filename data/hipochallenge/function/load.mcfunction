#init function

function hipochallenge:msg/debug/msg_info {msg:"Cargando datapack..."}
#Anunciar reload:

function hipochallenge:msg/debug/msg_info {msg:"Anunciando reloads..."}
execute store result storage minecraft:hipochallenge version int 1 run scoreboard players get #version var
function hipochallenge:load/announce_load with storage minecraft:hipochallenge

#scoreboards:

# TODO: Add storage 'minecraft:hipochallenge' constant definitions

function hipochallenge:msg/debug/msg_info {msg:"Creando scoreboards..."}
scoreboard objectives add id dummy

# TODO: Delete var scoreboard when memory transition is done.

scoreboard objectives add var dummy
scoreboard objectives add timer dummy
scoreboard objectives add value dummy

scoreboard objectives add player_list_info dummy
scoreboard objectives add class dummy
scoreboard objectives add kit dummy
scoreboard objectives add perk dummy

scoreboard objectives add is_dead deathCount
scoreboard objectives add death_count deathCount
scoreboard objectives add has_killed playerKillCount
scoreboard objectives add player_kill_count playerKillCount
scoreboard objectives add player_health health
scoreboard objectives add points dummy

scoreboard objectives add goto trigger
scoreboard objectives add menu trigger

scoreboard objectives add cd1 dummy
scoreboard objectives add cd2 dummy
scoreboard objectives add cd3 dummy

scoreboard objectives add match_request_display dummy
scoreboard objectives modify match_request_display displayname {"bold":true,"color":"gold","translate":"hc.sidebar.match_request.new","fallback":"NEW MATCH REQUEST","italic":true}

# score init

scoreboard players add @a player_list_info 0
scoreboard players add @a class 0
scoreboard players add @a kit 0
scoreboard players add @a perk 0

scoreboard players add @a death_count 0
scoreboard players add @a has_killed 0
scoreboard players add @a player_kill_count 0
scoreboard players add @a player_health 0
scoreboard players add @a points 0

scoreboard players add @a cd1 0
scoreboard players add @a cd2 0
scoreboard players add @a cd3 0

# teams

function hipochallenge:msg/debug/msg_info {msg:"Creando equipos..."}
team add admin
team add team1
team add team2
team add neutral
team add spectator
team add not_playing

team modify team1 collisionRule always
team modify team1 friendlyFire false
team modify team1 nametagVisibility hideForOtherTeams
team modify team1 seeFriendlyInvisibles true

team modify team2 collisionRule always
team modify team2 friendlyFire false
team modify team2 nametagVisibility hideForOtherTeams
team modify team2 seeFriendlyInvisibles true

team modify neutral collisionRule pushOwnTeam
team modify neutral friendlyFire true
team modify neutral nametagVisibility always
team modify neutral seeFriendlyInvisibles false
team modify neutral color aqua
team modify neutral displayName "Neutral"
team modify neutral prefix "[Neutral] "

team modify spectator collisionRule never
team modify spectator friendlyFire false
team modify spectator nametagVisibility hideForOtherTeams
team modify spectator seeFriendlyInvisibles true
team modify spectator color gray
team modify spectator displayName "Espectadores"
team modify spectator prefix "[Espectador] "

team modify not_playing collisionRule pushOwnTeam
team modify not_playing friendlyFire false
team modify not_playing nametagVisibility always
team modify not_playing seeFriendlyInvisibles false
team modify not_playing color white
team modify not_playing displayName "No jugando"
team modify not_playing prefix ""

#gamerules

gamerule announceAdvancements false
gamerule blockExplosionDropDecay false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 32768
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule doWardenSpawning false
gamerule drowningDamage true
gamerule enderPearlsVanishOnDeath true
gamerule fallDamage false
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule globalSoundEvents true
#gamerule functionCommandLimit 10000
gamerule keepInventory true
gamerule lavaSourceConversion false
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobExplosionDropDecay false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule playersSleepingPercentage 200
gamerule randomTickSpeed 0
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule snowAccumulationHeight 1
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplosionDropDecay false
gamerule universalAnger false
gamerule waterSourceConversion true

#logo

function hipochallenge:msg/debug/msg_info {msg:"Reiniciando logo..."}
kill @e[tag=logo]
execute positioned 458 -46 -100 run function hipochallenge:lobby/logo
execute positioned -217 30 102 run function hipochallenge:lobby/logo

#Bola de nieve:
function hipochallenge:msg/debug/msg_info {msg:"Inicializando funciones recursivas de tipo main..."}

schedule clear hipochallenge:main_sec
schedule function hipochallenge:main_sec 1s

schedule clear hipochallenge:main_ten_ticks
schedule function hipochallenge:main_ten_ticks 1s

#Variables:

# TODO: Delete this line.
    #function hipochallenge:var/var_editor
#

#Updates
function hipochallenge:msg/debug/msg_info {msg:"Actualizando text-displays..."}
function hipochallenge:teams/update_team_text_displays with storage minecraft:hipochallenge