# init function

function hipochallenge:msg/debug/msg_info {msg:"Loading datapack..."}
# announce reload

function hipochallenge:msg/debug/msg_info {msg:"Announcing reload..."}
execute store result storage minecraft:hipochallenge version int 1 run scoreboard players get #version value
function hipochallenge:load/announce_load_st with storage minecraft:hipochallenge

# storage:

function hipochallenge:storage/init_consts

#scoreboards:

# TODO: Add storage 'minecraft:hipochallenge' constant definitions

function hipochallenge:msg/debug/msg_info {msg:"Creating scoreboards..."}
scoreboard objectives add id dummy

# TODO: Delete var scoreboard when memory transition is done.

#scoreboard objectives add var dummy
scoreboard objectives add timer dummy
scoreboard objectives add silence_timer dummy
scoreboard objectives add in_combat_timer dummy
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
scoreboard objectives add leave trigger

scoreboard objectives add join trigger

# TODO: Add item cooldowns
scoreboard objectives add tank_kit1_goat_horn_cd dummy
scoreboard objectives add tank_kit1_castle_cd dummy
scoreboard objectives add tank_kit2_goat_horn_cd dummy
scoreboard objectives add tank_kit3_goat_horn_cd dummy
scoreboard objectives add tank_kit3_bubble_shield_cd dummy
scoreboard objectives add tank_kit3_redirect_spirit_cd dummy
scoreboard objectives add tank_perk1_nutritious_meal_cd dummy
scoreboard objectives add marksman_kit1_archers_potion_cd dummy
scoreboard objectives add marksman_kit1_smoke_arrow_crossbow_cd dummy
scoreboard objectives add marksman_kit3_pistol_cd dummy
scoreboard objectives add marksman_kit3_el_diablo_bullet_cd dummy
scoreboard objectives add assassin_kit1_duelist_sword_cd dummy
scoreboard objectives add assassin_kit1_crystal_amulet_cd dummy
scoreboard objectives add assassin_kit2_stun_mechanism_cd dummy
scoreboard objectives add assassin_kit3_repulsing_rod_cd dummy
scoreboard objectives add assassin_kit3_magic_feather_cd dummy
scoreboard objectives add assassin_kit3_teleportation_mark_cd dummy
scoreboard objectives add support_kit1_snow_sentinel_cd dummy
scoreboard objectives add support_kit1_levitation_bomb_cd dummy
scoreboard objectives add support_kit1_gravity_well_cd dummy
scoreboard objectives add support_kit2_healing_rod_cd dummy
scoreboard objectives add support_kit2_cleansing_projectile_cd dummy
scoreboard objectives add support_kit2_slowness_trap_cd dummy
scoreboard objectives add support_kit3_unstable_totem_cd dummy
scoreboard objectives add support_kit3_evil_eye_cd dummy
scoreboard objectives add recon_kit1_blindness_sentinel_cd dummy
scoreboard objectives add recon_kit1_flash_bomb_cd dummy
scoreboard objectives add recon_kit1_low_visibility_area_cd dummy
scoreboard objectives add recon_kit2_flare_arrow_cd dummy
scoreboard objectives add recon_kit2_trackers_potion_cd dummy
scoreboard objectives add recon_kit2_revealing_sentinel_cd dummy
scoreboard objectives add recon_kit3_portal_cd dummy
scoreboard objectives add recon_kit3_deception_effigy_cd dummy
scoreboard objectives add assault_kit1_ticking_bomb_cd dummy
scoreboard objectives add assault_kit1_knockback_bomb_cd dummy
scoreboard objectives add assault_kit1_smoke_bomb_cd dummy
scoreboard objectives add assault_kit2_harpoon_cd dummy
scoreboard objectives add assault_kit2_void_arrow_cd dummy
scoreboard objectives add assault_kit3_assault_shield_cd dummy
scoreboard objectives add assault_kit3_pushing_projectile_cd dummy

scoreboard objectives add match_request_display dummy

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

#scoreboard players add @a cd1 0
#scoreboard players add @a cd2 0
#scoreboard players add @a cd3 0

scoreboard objectives modify match_request_display displayname {"bold":true,"color":"gold","translate":"hc.sidebar.match_request.new","fallback":"NEW MATCH REQUEST","italic":true}

# teams

function hipochallenge:msg/debug/msg_info {msg:"Creating teams..."}
team add admin
team add team1
team add team2
team add neutral
team add spectator
team add not_playing

team modify admin collisionRule never
team modify admin friendlyFire false
team modify admin nametagVisibility always
team modify admin seeFriendlyInvisibles true
team modify admin color gold
team modify admin displayName {"translate":"hc.teams.admin.name","fallback":"Admin"}
team modify admin prefix ["[",{"translate":"hc.teams.admin.name","fallback":"Admin"},"] "]

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
team modify neutral color white
team modify neutral displayName {"translate":"hc.teams.neutral.name","fallback":"Neutral"}
team modify neutral prefix ["[",{"translate":"hc.teams.neutral.name","fallback":"Neutral"},"] "]

team modify spectator collisionRule never
team modify spectator friendlyFire false
team modify spectator nametagVisibility hideForOtherTeams
team modify spectator seeFriendlyInvisibles true
team modify spectator color gray
team modify spectator displayName {"translate":"hc.teams.spectator.name","fallback":"Spectator"}
team modify spectator prefix ["[",{"translate":"hc.teams.spectator.name","fallback":"Spectator"},"] "]

team modify not_playing collisionRule pushOwnTeam
team modify not_playing friendlyFire false
team modify not_playing nametagVisibility always
team modify not_playing seeFriendlyInvisibles false
team modify not_playing color white
team modify not_playing displayName {"translate":"hc.teams.not_playing.name","fallback":"Not playing"}
team modify not_playing prefix ""

# gamerules

function hipochallenge:msg/debug/msg_info {msg:"Setting gamerules..."}
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

# logo

function hipochallenge:msg/debug/msg_info {msg:"Restarting logos..."}
kill @e[tag=logo]
execute positioned 458 -46 -100 run function hipochallenge:lobby/logo
execute positioned -84 -32 151 run function hipochallenge:lobby/logo

# schedule main functions
function hipochallenge:msg/debug/msg_info {msg:"Scheduling main functions..."}

schedule clear hipochallenge:main_ten_ticks
schedule function hipochallenge:main_ten_ticks 10t

schedule clear hipochallenge:main_sec
schedule function hipochallenge:main_sec 1s

# update team text displays
function hipochallenge:msg/debug/msg_info {msg:"Updating text displays..."}
function hipochallenge:teams/update_team_text_displays_st with storage minecraft:hipochallenge