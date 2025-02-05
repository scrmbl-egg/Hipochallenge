# create scores

# TODO: check if this score is necessary at all.
# player unique id's
scoreboard objectives add id dummy

# score for entity lifetimes
scoreboard objectives add life_timer dummy

# scores for timed mechanics 
scoreboard objectives add silence_timer dummy
#scoreboard objectives add detection_timer dummy
scoreboard objectives add in_combat_timer dummy
scoreboard objectives add suppression_timer dummy

# FIXME: this score isn't used enough to keep in the code
scoreboard objectives add value dummy

# player list info score. no value must be stored here.
scoreboard objectives add player_list_info dummy

# class, kit and perk scores
scoreboard objectives add class dummy
scoreboard objectives add kit dummy
scoreboard objectives add perk dummy

# score to check if the player has left the game.
scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

# scores related to death, kills, and health
scoreboard objectives add player_health health
scoreboard objectives add player_kill_count playerKillCount
scoreboard objectives add death_count deathCount
scoreboard objectives add points dummy
scoreboard objectives add is_dead deathCount
scoreboard objectives add has_killed playerKillCount

# trigger scores
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
# bow shot can't be detected with achievements
scoreboard objectives add bow_shot minecraft.used:minecraft.bow

## __ KEEP AT BOTTOM OF FILE __
# init scores (refresh counters)
scoreboard players add @a player_list_info 0

scoreboard players add @a class 0
scoreboard players add @a kit 0
scoreboard players add @a perk 0

scoreboard players add @a player_health 0
scoreboard players add @a player_kill_count 0
scoreboard players add @a death_count 0
scoreboard players add @a points 0
scoreboard players add @a is_dead 0
scoreboard players add @a has_killed 0
