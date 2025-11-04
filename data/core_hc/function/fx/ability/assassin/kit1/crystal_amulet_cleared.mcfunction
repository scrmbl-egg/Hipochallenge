#>core_hc:fx/ability/assassin/kit1/crystal_amulet_cleared
#
# Runs the visual and sound effects for clearing the assassin's crystal amulet.
#
# @context player

# particle
particle minecraft:white_ash ~ ~1 ~ 0.2 0.4 0.2 0 30 force
particle minecraft:item{item:"minecraft:amethyst_shard"} \
    ~ ~1 ~ 0.2 0.4 0.2 0.2 8 force

# sound
playsound minecraft:block.glass.break player @a ~ ~ ~ 0.75 1.2
