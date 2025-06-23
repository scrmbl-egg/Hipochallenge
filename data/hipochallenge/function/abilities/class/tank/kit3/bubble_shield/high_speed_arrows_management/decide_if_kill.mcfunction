# params:
    # x_future_pos
    # y_future_pos
    # z_future_pos
    # range
    # lifetime_ticks

#$tellraw @a {"text":"pos:[$(x_pos),$(y_pos),$(z_pos)]\nfut_pos:[$(x_future_pos),$(y_future_pos),$(z_future_pos)]\nmot:[$(x_motion),$(y_motion),$(z_motion)]\n---"}

# create a temporal marker to check if arrow needs to be killed
$execute positioned $(x_future_pos) $(y_future_pos) $(z_future_pos) run summon marker ~ ~ ~ {Tags:["kill_checker","kill_at_end_of_round"]}

# add to bubble shield's lifetime on impact
$execute \
    at @n[tag=bubble_shield,type=marker,tag=current_bubble_shield] \
    if entity @n[tag=kill_checker,type=marker,distance=..$(range)] \
    run scoreboard players add @n[type=marker,tag=current_bubble_shield,distance=..$(range)] life_timer $(lifetime_ticks_refreshed)

# decide if arrow needs to be killed (and do it + fx)
$execute \
    at @n[tag=bubble_shield,type=marker,tag=current_bubble_shield] \
    if entity @n[tag=kill_checker,type=marker,distance=..$(range)] \
    at @s \
    run function hipochallenge:vfx/abilities/class/tank/kit3/bubble_shield_killed_projectile \
    with storage minecraft:hipochallenge local_hsa_manager.params
$execute \
    at @n[tag=bubble_shield,type=marker,tag=current_bubble_shield] \
    if entity @n[tag=kill_checker,type=marker,distance=..$(range)] \
    if entity @s[type=trident] \
    at @s \
    run function hipochallenge:abilities/class/tank/kit2/trident/kill_and_return
$execute \
    at @n[tag=bubble_shield,type=marker,tag=current_bubble_shield] \
    if entity @n[tag=kill_checker,type=marker,distance=..$(range)] \
    run kill @s

# kill temporal marker
kill @n[tag=kill_checker,type=marker]

