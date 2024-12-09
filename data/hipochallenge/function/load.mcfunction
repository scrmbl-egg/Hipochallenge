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
# TODO: 'timer' score is probably not very descriptive. 'lifetime' could work
# better for what it's being used for

# TODO: Move scores to their own separate init functions

#scoreboard objectives add var dummy
scoreboard objectives add timer dummy
scoreboard objectives add silence_timer dummy
scoreboard objectives add in_combat_timer dummy
scoreboard objectives add suppression_timer dummy
scoreboard objectives add value dummy

scoreboard objectives add player_list_info dummy
scoreboard objectives add class dummy
scoreboard objectives add kit dummy
scoreboard objectives add perk dummy

scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

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

# items and ability cooldowns
scoreboard objectives add tank_kit1_goat_horn_cd dummy
scoreboard objectives add tank_kit1_castle_cd dummy
scoreboard objectives add tank_kit2_goat_horn_cd dummy
scoreboard objectives add tank_kit2_goat_horn_nearby_enemies dummy
scoreboard objectives add tank_kit2_goat_horn_recovery_ticks dummy
scoreboard objectives add tank_kit2_trident_cd dummy
scoreboard objectives add tank_kit3_goat_horn_cd dummy
scoreboard objectives add tank_kit3_bubble_shield_cd dummy
scoreboard objectives add tank_kit3_redirect_spirit_cd dummy
scoreboard objectives add tank_perk1_nutritious_meal_cd dummy
scoreboard objectives add marksman_kit1_new_projectile_cd dummy
scoreboard objectives add marksman_kit1_archers_potion_cd dummy
scoreboard objectives add marksman_kit1_smoke_arrow_crossbow_cd dummy
scoreboard objectives add marksman_kit2_new_projectile_cd dummy
scoreboard objectives add marksman_kit3_new_projectile_cd dummy
scoreboard objectives add marksman_kit3_pistol_cd dummy
scoreboard objectives add marksman_kit3_el_diablo_bullet_cd dummy
scoreboard objectives add assassin_kit1_duelist_sword_parry_cd dummy
scoreboard objectives add assassin_kit1_parry_interaction_relative_pos_x dummy
scoreboard objectives add assassin_kit1_parry_interaction_relative_pos_y dummy
scoreboard objectives add assassin_kit1_parry_interaction_relative_pos_z dummy
scoreboard objectives add assassin_kit1_enhanced_duelist_sword_cd dummy
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

# item scores
scoreboard objectives add bow_shot minecraft.used:minecraft.bow

# display scores
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

# FIXME: Check if this column is safe to delete
#scoreboard players add @a tank_kit1_goat_horn_cd 0
#scoreboard players add @a tank_kit1_castle_cd 0
#scoreboard players add @a tank_kit2_goat_horn_cd 0
#scoreboard players add @a tank_kit2_goat_horn_nearby_enemies 0
#scoreboard players add @a tank_kit3_goat_horn_cd 0
#scoreboard players add @a tank_kit3_bubble_shield_cd 0
#scoreboard players add @a tank_kit3_redirect_spirit_cd 0
#scoreboard players add @a tank_perk1_nutritious_meal_cd 0
#scoreboard players add @a marksman_kit1_new_projectile_cd 0
#scoreboard players add @a marksman_kit1_archers_potion_cd 0
#scoreboard players add @a marksman_kit1_smoke_arrow_crossbow_cd 0
#scoreboard players add @a marksman_kit2_new_projectile_cd 0
#scoreboard players add @a marksman_kit3_new_projectile_cd 0
#scoreboard players add @a marksman_kit3_pistol_cd 0
#scoreboard players add @a marksman_kit3_el_diablo_bullet_cd 0
#scoreboard players add @a assassin_kit1_duelist_sword_parry_cd 0
#scoreboard players add @a assassin_kit1_enhanced_duelist_sword_cd 0
#scoreboard players add @a assassin_kit1_crystal_amulet_cd 0
#scoreboard players add @a assassin_kit2_stun_mechanism_cd 0
#scoreboard players add @a assassin_kit3_repulsing_rod_cd 0
#scoreboard players add @a assassin_kit3_magic_feather_cd 0
#scoreboard players add @a assassin_kit3_teleportation_mark_cd 0
#scoreboard players add @a support_kit1_snow_sentinel_cd 0
#scoreboard players add @a support_kit1_levitation_bomb_cd 0
#scoreboard players add @a support_kit1_gravity_well_cd 0
#scoreboard players add @a support_kit2_healing_rod_cd 0
#scoreboard players add @a support_kit2_cleansing_projectile_cd 0
#scoreboard players add @a support_kit2_slowness_trap_cd 0
#scoreboard players add @a support_kit3_unstable_totem_cd 0
#scoreboard players add @a support_kit3_evil_eye_cd 0
#scoreboard players add @a recon_kit1_blindness_sentinel_cd 0
#scoreboard players add @a recon_kit1_flash_bomb_cd 0
#scoreboard players add @a recon_kit1_low_visibility_area_cd 0
#scoreboard players add @a recon_kit2_flare_arrow_cd 0
#scoreboard players add @a recon_kit2_trackers_potion_cd 0
#scoreboard players add @a recon_kit2_revealing_sentinel_cd 0
#scoreboard players add @a recon_kit3_portal_cd 0
#scoreboard players add @a recon_kit3_deception_effigy_cd 0
#scoreboard players add @a assault_kit1_ticking_bomb_cd 0
#scoreboard players add @a assault_kit1_knockback_bomb_cd 0
#scoreboard players add @a assault_kit1_smoke_bomb_cd 0
#scoreboard players add @a assault_kit2_harpoon_cd 0
#scoreboard players add @a assault_kit2_void_arrow_cd 0
#scoreboard players add @a assault_kit3_assault_shield_cd 0
#scoreboard players add @a assault_kit3_pushing_projectile_cd 0


scoreboard objectives modify match_request_display displayname {"bold":true,"color":"gold","translate":"hc.sidebar.match_request.new","fallback":"NEW MATCH REQUEST","italic":true}

# teams

function hipochallenge:msg/debug/msg_info {msg:"Creating teams..."}

team add admins
team modify admins collisionRule never
team modify admins friendlyFire false
team modify admins nametagVisibility always
team modify admins seeFriendlyInvisibles true
team modify admins color gold
team modify admins displayName {"translate":"hc.teams.admins.name","fallback":"Admins","underlined":true}
team modify admins prefix ["",{"translate":"hc.teams.admins.name","fallback":"Admins","underlined":true}," "]

team add team1
team modify team1 collisionRule always
team modify team1 friendlyFire false
team modify team1 nametagVisibility hideForOtherTeams
team modify team1 seeFriendlyInvisibles true

team add team2
team modify team2 collisionRule always
team modify team2 friendlyFire false
team modify team2 nametagVisibility hideForOtherTeams
team modify team2 seeFriendlyInvisibles true

team add neutral
team modify neutral collisionRule pushOwnTeam
team modify neutral friendlyFire true
team modify neutral nametagVisibility always
team modify neutral seeFriendlyInvisibles false
team modify neutral color white
team modify neutral displayName {"translate":"hc.teams.neutral.name","fallback":"Neutral","underlined":true}
team modify neutral prefix ["",{"translate":"hc.teams.neutral.name","fallback":"Neutral","underlined":true}," "]

team add spectators
team modify spectators collisionRule never
team modify spectators friendlyFire false
team modify spectators nametagVisibility hideForOtherTeams
team modify spectators seeFriendlyInvisibles true
team modify spectators color gray
team modify spectators displayName {"translate":"hc.teams.spectators.name","fallback":"Spectators","underlined":true}
team modify spectators prefix ["",{"translate":"hc.teams.spectators.name","fallback":"Spectators","underlined":true}," "]

team add not_playing
team modify not_playing collisionRule pushOwnTeam
team modify not_playing friendlyFire false
team modify not_playing nametagVisibility always
team modify not_playing seeFriendlyInvisibles false
team modify not_playing color white
team modify not_playing displayName {"translate":"hc.teams.not_playing.name","fallback":"Not playing"}
team modify not_playing prefix ""

team add no_collision_entity
team modify no_collision_entity collisionRule never
team modify no_collision_entity friendlyFire true
team modify no_collision_entity nametagVisibility never
team modify no_collision_entity seeFriendlyInvisibles false
team modify no_collision_entity color white
team modify no_collision_entity displayName "no_collision_entity"
team modify no_collision_entity prefix ""

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
function hipochallenge:teams/text_displays/update_st with storage minecraft:hipochallenge