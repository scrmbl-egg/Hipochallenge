execute as @s[scores={menu=1}] run function hipochallenge:menus/tellraws/show_menu

execute as @s[scores={menu=4}] run function hipochallenge:menus/tellraws/show_options

function hipochallenge:menus/options/options_on_off

scoreboard players set @s menu 0
scoreboard players enable @s[tag=dev] menu