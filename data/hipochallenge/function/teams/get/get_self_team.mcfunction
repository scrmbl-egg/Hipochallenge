# generates:
    # local_self_team

execute if entity @s[team=admins] run data modify storage minecraft:hipochallenge local_self_team set value admins
execute if entity @s[team=not_playing] run data modify storage minecraft:hipochallenge local_self_team set value not_playing
execute if entity @s[team=spectators] run data modify storage minecraft:hipochallenge local_self_team set value spectators
execute if entity @s[team=team1] run data modify storage minecraft:hipochallenge local_self_team set value team1
execute if entity @s[team=team2] run data modify storage minecraft:hipochallenge local_self_team set value team2
execute if entity @s[team=neutral] run data modify storage minecraft:hipochallenge local_self_team set value neutral