#>core_hc:fx/ability/recon/kit2/flare_arrow_given
#
# Runs the visual and sound effects for the recon's new flare arrow being
# given.
#
# @context player

# sound (play in ui channel since this only plays for the player)
playsound minecraft:block.vault.eject_item ui @s ~ ~ ~ 0.4 1.346 0
playsound minecraft:entity.player.levelup ui @s ~ ~ ~ 0.4 1.5 0.4
