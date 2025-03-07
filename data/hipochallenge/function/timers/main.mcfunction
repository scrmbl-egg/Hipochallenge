# lifetimes
# TODO: There's two routes we could take regarding the following command:
    # 1: We could change the selector to @e so that ANY entity with life_timer score
    # has its lifetime
    # updated.
        # PROS: no individual entity handling
        # CONS: AWFUL performance
    # 2: Remove it entirely
        # PROS: BETTER performance, since we are capable of filtering more
        # precisely what entities actually decrease their lifetime
        # CONS: every entity that needs a lifetime must be individually handled
execute as @a[scores={life_timer=1..}] run scoreboard players remove @s life_timer 1

# mechanics
execute as @a[scores={silence_timer=1..}] run scoreboard players remove @s silence_timer 1
execute as @a[scores={in_combat_timer=1..}] run scoreboard players remove @s in_combat_timer 1
execute as @a[scores={suppression_timer=1..}] run scoreboard players remove @s suppression_timer 1

# cooldown timers

# TODO: Check if all cooldowns are handled
execute as @a[scores={tank_kit1_goat_horn_cd=1..}] run scoreboard players remove @s tank_kit1_goat_horn_cd 1
execute as @a[scores={tank_kit1_castle_cd=1..}] run scoreboard players remove @s tank_kit1_castle_cd 1
execute as @a[scores={tank_kit2_goat_horn_cd=1..}] run scoreboard players remove @s tank_kit2_goat_horn_cd 1
execute as @a[scores={tank_kit2_goat_horn_recovery_ticks=1..}] run scoreboard players remove @s tank_kit2_goat_horn_recovery_ticks 1
execute as @a[scores={tank_kit2_trident_cd=1..}] run scoreboard players remove @s tank_kit2_trident_cd 1
execute as @a[scores={tank_kit3_goat_horn_cd=1..}] run scoreboard players remove @s tank_kit3_goat_horn_cd 1
execute as @a[scores={tank_kit3_bubble_shield_cd=1..}] run scoreboard players remove @s tank_kit3_bubble_shield_cd 1
execute as @a[scores={tank_kit3_redirect_spirit_cd=1..}] run scoreboard players remove @s tank_kit3_redirect_spirit_cd 1
execute as @a[scores={tank_perk1_nutritious_meal_cd=1..}] run scoreboard players remove @s tank_perk1_nutritious_meal_cd 1
execute as @a[scores={marksman_kit1_new_projectile_cd=1..}] run scoreboard players remove @s marksman_kit1_new_projectile_cd 1
execute as @a[scores={marksman_kit1_archers_potion_cd=1..}] run scoreboard players remove @s marksman_kit1_archers_potion_cd 1
execute as @a[scores={marksman_kit1_smoke_arrow_crossbow_cd=1..}] run scoreboard players remove @s marksman_kit1_smoke_arrow_crossbow_cd 1
execute as @a[scores={marksman_kit2_new_projectile_cd=1..}] run scoreboard players remove @s marksman_kit2_new_projectile_cd 1
execute as @a[scores={marksman_kit3_new_projectile_cd=1..}] run scoreboard players remove @s marksman_kit3_new_projectile_cd 1
execute as @a[scores={marksman_kit3_pistol_cd=1..}] run scoreboard players remove @s marksman_kit3_pistol_cd 1
execute as @a[scores={marksman_kit3_el_diablo_bullet_cd=1..}] run scoreboard players remove @s marksman_kit3_el_diablo_bullet_cd 1
execute as @a[scores={assassin_kit1_duelist_sword_parry_cd=1..}] run scoreboard players remove @s assassin_kit1_duelist_sword_parry_cd 1
execute as @a[scores={assassin_kit1_enhanced_duelist_sword_cd=1..}] run scoreboard players remove @s assassin_kit1_enhanced_duelist_sword_cd 1
execute as @a[scores={assassin_kit1_crystal_amulet_cd=1..}] run scoreboard players remove @s assassin_kit1_crystal_amulet_cd 1
execute as @a[scores={assassin_kit2_stun_mechanism_cd=1..}] run scoreboard players remove @s assassin_kit2_stun_mechanism_cd 1
execute as @a[scores={assassin_kit3_repulsing_rod_cd=1..}] run scoreboard players remove @s assassin_kit3_repulsing_rod_cd 1
execute as @a[scores={assassin_kit3_magic_feather_cd=1..}] run scoreboard players remove @s assassin_kit3_magic_feather_cd 1
execute as @a[scores={assassin_kit3_teleportation_mark_cd=1..}] run scoreboard players remove @s assassin_kit3_teleportation_mark_cd 1
execute as @a[scores={support_kit1_snow_sentinel_cd=1..}] run scoreboard players remove @s support_kit1_snow_sentinel_cd 1
execute as @a[scores={support_kit1_levitation_bomb_cd=1..}] run scoreboard players remove @s support_kit1_levitation_bomb_cd 1
execute as @a[scores={support_kit1_gravity_well_cd=1..}] run scoreboard players remove @s support_kit1_gravity_well_cd 1
execute as @a[scores={support_kit2_healing_rod_cd=1..}] run scoreboard players remove @s support_kit2_healing_rod_cd 1
execute as @a[scores={support_kit2_cleansing_projectile_cd=1..}] run scoreboard players remove @s support_kit2_cleansing_projectile_cd 1
execute as @a[scores={support_kit2_slowness_trap_cd=1..}] run scoreboard players remove @s support_kit2_slowness_trap_cd 1
execute as @a[scores={support_kit3_unstable_totem_cd=1..}] run scoreboard players remove @s support_kit3_unstable_totem_cd 1
execute as @a[scores={support_kit3_evil_eye_cd=1..}] run scoreboard players remove @s support_kit3_evil_eye_cd 1
execute as @a[scores={recon_kit1_blindness_sentinel_cd=1..}] run scoreboard players remove @s recon_kit1_blindness_sentinel_cd 1
execute as @a[scores={recon_kit1_flash_bomb_cd=1..}] run scoreboard players remove @s recon_kit1_flash_bomb_cd 1
execute as @a[scores={recon_kit1_low_visibility_area_cd=1..}] run scoreboard players remove @s recon_kit1_low_visibility_area_cd 1
execute as @a[scores={recon_kit2_flare_arrow_cd=1..}] run scoreboard players remove @s recon_kit2_flare_arrow_cd 1
execute as @a[scores={recon_kit2_trackers_potion_cd=1..}] run scoreboard players remove @s recon_kit2_trackers_potion_cd 1
execute as @a[scores={recon_kit2_revealing_sentinel_cd=1..}] run scoreboard players remove @s recon_kit2_revealing_sentinel_cd 1
execute as @a[scores={recon_kit3_portal_cd=1..}] run scoreboard players remove @s recon_kit3_portal_cd 1
execute as @a[scores={recon_kit3_deception_effigy_cd=1..}] run scoreboard players remove @s recon_kit3_deception_effigy_cd 1
execute as @a[scores={assault_kit1_ticking_bomb_cd=1..}] run scoreboard players remove @s assault_kit1_ticking_bomb_cd 1
execute as @a[scores={assault_kit1_knockback_bomb_cd=1..}] run scoreboard players remove @s assault_kit1_knockback_bomb_cd 1
execute as @a[scores={assault_kit1_smoke_bomb_cd=1..}] run scoreboard players remove @s assault_kit1_smoke_bomb_cd 1
execute as @a[scores={assault_kit2_harpoon_cd=1..}] run scoreboard players remove @s assault_kit2_harpoon_cd 1
execute as @a[scores={assault_kit2_void_arrow_cd=1..}] run scoreboard players remove @s assault_kit2_void_arrow_cd 1
execute as @a[scores={assault_kit3_assault_shield_cd=1..}] run scoreboard players remove @s assault_kit3_assault_shield_cd 1
execute as @a[scores={assault_kit3_pushing_projectile_cd=1..}] run scoreboard players remove @s assault_kit3_pushing_projectile_cd 1
