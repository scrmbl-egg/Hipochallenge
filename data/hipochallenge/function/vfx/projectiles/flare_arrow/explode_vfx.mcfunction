execute at @s run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 1.5 2
execute at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 3 2

execute at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.3 20 normal
execute at @s run particle minecraft:firework ~ ~ ~ 2 2 2 0.1 20 force

# TODO: consider if this especific particle could be harmful for people with
# photosensitivity
execute at @s run particle minecraft:flash ~ ~ ~ 0.5 0.5 0.5 1 3 force