# params:
    # uuid_str
    # kill_radius
    # tag_radius

# destroy outside projectiles
    # tag vulnerable projectiles
    $execute \
        as @e[type=#hipochallenge:game_projectiles,tag=projectile,distance=$(kill_radius)..$(tag_radius)] \
        run tag @s add vulnerable_to_bubble_shield_$(uuid_str)

    # kill high speed arrows (or other high speed projectiles)
    $execute \
    as @e[type=#hipochallenge:vanilla_projectiles,tag=projectile,distance=..$(tag_radius),tag=vulnerable_to_bubble_shield_$(uuid_str)] \
    at @s \
    run function hipochallenge:abilities/class/tank/kit3/bubble_shield/high_speed_arrows_management/predict_motion

    # run fx
    $execute \
        at @e[type=#hipochallenge:game_projectiles,tag=projectile,distance=..$(kill_radius),tag=vulnerable_to_bubble_shield_$(uuid_str)] \
        run function hipochallenge:vfx/abilities/class/tank/kit3/bubble_shield_killed_motionless_projectile

    # add to bubble shield's lifetime on impact
    $execute \
    at @e[type=#hipochallenge:game_projectiles,tag=projectile,distance=..$(kill_radius),tag=vulnerable_to_bubble_shield_$(uuid_str)] \
    run scoreboard players add @s life_timer $(lifetime_ticks_refreshed)

    # kill and return tridents
    $execute \
    as @e[type=trident,tag=projectile,distance=..$(kill_radius),tag=vulnerable_to_bubble_shield_$(uuid_str)] \
    at @s \
    run function hipochallenge:abilities/class/tank/kit2/trident/kill_and_return

    # kill projectiles
    $kill @e[type=#hipochallenge:game_projectiles,tag=projectile,distance=..$(kill_radius),tag=vulnerable_to_bubble_shield_$(uuid_str)]
