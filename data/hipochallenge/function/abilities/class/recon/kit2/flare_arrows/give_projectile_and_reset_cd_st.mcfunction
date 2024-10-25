# storage:
    # RECON_K2_MAX_FLARE_ARROW_AMOUNT
    # RECON_K2_NEW_FLARE_ARROW_REST_CD_TICKS

scoreboard objectives add local dummy

# check how many flare arrows the player has in their inventory (clear 0 results in the amount of items detected)
execute store result score $projectile_count local run clear @s *[custom_data={item_id:recon_k2_flare_arrow}] 0
$scoreboard players set $max_projectiles local $(RECON_K2_MAX_FLARE_ARROW_AMOUNT)

# if has less than max amount of projectiles, give projectile and set faster cooldown
# HACK: this must be eventually replaced with a proper flare arrow give function
execute as @s if score $projectile_count local < $max_projectiles local run give @s spectral_arrow[custom_data={item_id:recon_k2_flare_arrow}] 1
$execute as @s if score $projectile_count local < $max_projectiles local run scoreboard players set @s recon_kit2_flare_arrow_cd $(RECON_K2_NEW_FLARE_ARROW_REST_CD_TICKS)

scoreboard objectives remove local