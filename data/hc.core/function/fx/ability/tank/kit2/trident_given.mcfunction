#>hc.core:fx/ability/tank/kit2/trident_given
#
# Runs the visual and sound effects for the tank's trident being given.
#
# @context player

# sound (play in ui channel since this only plays for the player)
playsound minecraft:block.vault.eject_item ui @s ~ ~ ~ 0.4 1.346 0.4
playsound minecraft:item.trident.riptide_1 ui @s ~ ~ ~ 0.4 1 0.4
