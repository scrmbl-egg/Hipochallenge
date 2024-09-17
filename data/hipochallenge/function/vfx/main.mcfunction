# vfx de equiparse
execute as @e[tag=equip_spin_particle,type=marker] run function hipochallenge:vfx/equip_spin_particle

# welcome

execute as @a[scores={has_left = 1..}] at @s run function hipochallenge:vfx/welcome/main with storage hipochallenge
scoreboard players set @a[scores={has_left = 1..}] has_left 0