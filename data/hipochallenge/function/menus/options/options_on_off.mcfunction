# blood
    tag @s[scores={menu=-1}] remove hide_blood
    tag @s[scores={menu=-2}] add hide_blood
    execute at @s[scores={menu=-1}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.1
    execute at @s[scores={menu=-2}] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8

execute as @s[scores={menu=-100..-1}] run function hipochallenge:menus/tellraws/show_options