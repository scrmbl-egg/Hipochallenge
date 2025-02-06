# params:
    # dest_st
    # dest_path

execute if entity @s[team=admins] run return fail
execute if entity @s[team=not_playing] run return fail
execute if entity @s[team=spectators] run return fail
$execute if entity @s[team=team1] run return run data modify storage $(dest_st) $(dest_path) set value team2
$execute if entity @s[team=team2] run return run data modify storage $(dest_st) $(dest_path) set value team1
$execute if entity @s[team=neutral] run return run data modify storage $(dest_st) $(dest_path) set value neutral
