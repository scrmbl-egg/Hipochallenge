execute at @s[tag=team1] run particle minecraft:sneeze ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1 force @a[scores={class=5,perk=3},distance=2..,team=team2]
execute at @s[tag=team2] run particle minecraft:sneeze ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1 force @a[scores={class=5,perk=3},distance=2..,team=team1]
execute at @s[tag=neutral] run particle minecraft:sneeze ~ ~0.25 ~ 0.1 0.1 0.1 0.01 1 force @a[scores={class=5,perk=3},distance=2..]

scoreboard players add @s timer 1
$kill @s[scores={timer=$(hound_duration)..}]