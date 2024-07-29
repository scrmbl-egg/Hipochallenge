execute at @s run particle minecraft:dust_plume ~ ~0.5 ~ 0.25 0.5 0.25 0 40 normal

execute at @s run playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 1.75
execute at @s run playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 1.25
execute at @s run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 1 1

execute at @s run summon marker ~ ~ ~ {Tags:["equip_spin_particle"]}
execute at @s run tp @e[tag=equip_spin_particle,type=marker,limit=1,distance=0] ~ ~ ~