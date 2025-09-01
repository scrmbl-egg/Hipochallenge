#>core_hc:fx/projectile/class/recon/flare_arrow/explosion
#
# Runs the visual and sound effects for the flare arrow explosion.

# sounds
playsound minecraft:entity.shulker_bullet.hit \
    player @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use \
    player @a ~ ~ ~ 3 2

# particles
particle minecraft:end_rod \
    ~ ~ ~ 0.1 0.1 0.1 0.3 20 normal
particle minecraft:firework \
    ~ ~ ~ 2 2 2 0.1 20 force
# TODO: check if this particle is safe for people with photosensitivity
particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 3 force
