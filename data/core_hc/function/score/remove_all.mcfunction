#>core_hc:score/remove_all
#
# Removes all scores in the datapack

function hipochallenge:msg/debug/send_info {text:"\"Removing score objectives...\""}

# TODO: check if this score is necessary at all.
# player unique id's
scoreboard objectives remove id

# score for entity lifetimes
scoreboard objectives remove life_timer

# scores for timed mechanics
scoreboard objectives remove silence_timer
#scoreboard objectives remove detection_timer
scoreboard objectives remove in_combat_timer
scoreboard objectives remove suppression_timer

# FIXME: this score isn't used enough to keep in the code
scoreboard objectives remove value

# player list info score. no value must be stored here.
scoreboard objectives remove player_list_info

# class, kit and perk scores
scoreboard objectives remove class
scoreboard objectives remove kit
scoreboard objectives remove perk

# score to check if the player has left the game.
scoreboard objectives remove has_left

# scores related to death, kills, and health
scoreboard objectives remove player_health
scoreboard objectives remove player_kill_count
scoreboard objectives remove death_count
scoreboard objectives remove points
scoreboard objectives remove is_dead
scoreboard objectives remove has_killed

# trigger scores
scoreboard objectives remove goto
scoreboard objectives remove menu
scoreboard objectives remove leave

scoreboard objectives remove join

# items and ability cooldowns
scoreboard objectives remove tank_kit1_goat_horn_cd
scoreboard objectives remove tank_kit1_castle_cd
scoreboard objectives remove tank_kit2_goat_horn_cd
scoreboard objectives remove tank_kit2_goat_horn_nearby_enemies
scoreboard objectives remove tank_kit2_goat_horn_recovery_ticks
scoreboard objectives remove tank_kit2_trident_cd
scoreboard objectives remove tank_kit3_goat_horn_cd
scoreboard objectives remove tank_kit3_bubble_shield_cd
scoreboard objectives remove tank_kit3_redirect_spirit_cd
scoreboard objectives remove tank_perk1_nutritious_meal_cd
scoreboard objectives remove marksman_kit1_new_projectile_cd
scoreboard objectives remove marksman_kit1_archers_potion_cd
scoreboard objectives remove marksman_kit1_smoke_arrow_crossbow_cd
scoreboard objectives remove marksman_kit2_new_projectile_cd
scoreboard objectives remove marksman_kit3_new_projectile_cd
scoreboard objectives remove marksman_kit3_pistol_cd
scoreboard objectives remove marksman_kit3_el_diablo_bullet_cd
scoreboard objectives remove assassin_kit1_duelist_sword_parry_cd
scoreboard objectives remove assassin_kit1_parry_interaction_relative_pos_x
scoreboard objectives remove assassin_kit1_parry_interaction_relative_pos_y
scoreboard objectives remove assassin_kit1_parry_interaction_relative_pos_z
scoreboard objectives remove assassin_kit1_enhanced_duelist_sword_cd
scoreboard objectives remove assassin_kit1_crystal_amulet_cd
scoreboard objectives remove assassin_kit2_stun_mechanism_cd
scoreboard objectives remove assassin_kit3_repulsing_rod_cd
scoreboard objectives remove assassin_kit3_magic_feather_cd
scoreboard objectives remove assassin_kit3_teleportation_mark_cd
scoreboard objectives remove support_kit1_snow_sentinel_cd
scoreboard objectives remove support_kit1_levitation_bomb_cd
scoreboard objectives remove support_kit1_gravity_well_cd
scoreboard objectives remove support_kit2_healing_rod_cd
scoreboard objectives remove support_kit2_cleansing_projectile_cd
scoreboard objectives remove support_kit2_slowness_trap_cd
scoreboard objectives remove support_kit3_unstable_totem_cd
scoreboard objectives remove support_kit3_evil_eye_cd
scoreboard objectives remove recon_kit1_blindness_sentinel_cd
scoreboard objectives remove recon_kit1_flash_bomb_cd
scoreboard objectives remove recon_kit1_low_visibility_area_cd
scoreboard objectives remove recon_kit2_flare_arrow_cd
scoreboard objectives remove recon_kit2_trackers_potion_cd
scoreboard objectives remove recon_kit2_revealing_sentinel_cd
scoreboard objectives remove recon_kit3_portal_cd
scoreboard objectives remove recon_kit3_deception_effigy_cd
scoreboard objectives remove assault_kit1_ticking_bomb_cd
scoreboard objectives remove assault_kit1_knockback_bomb_cd
scoreboard objectives remove assault_kit1_smoke_bomb_cd
scoreboard objectives remove assault_kit2_harpoon_cd
scoreboard objectives remove assault_kit2_void_arrow_cd
scoreboard objectives remove assault_kit3_assault_shield_cd
scoreboard objectives remove assault_kit3_pushing_projectile_cd

# item scores
# bow shot can't be detected with achievements
scoreboard objectives remove bow_shot
