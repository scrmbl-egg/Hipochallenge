# storage:
    # local_selector
    # local_first_origin_x
    # local_first_origin_y
    # local_first_origin_z
    # local_second_origin_x
    # local_second_origin_y
    # local_second_origin_z
    # local_dx
    # local_dy
    # local_dz
    # local_cmd

# behold, the ULTIMATE macro
$execute as $(local_selector) at @s if entity @s[x=$(local_first_origin_x),y=$(local_first_origin_y),z=$(local_first_origin_z),dx=$(local_dx),dy=$(local_dy),dz=$(local_dz)] if entity @s[x=$(local_second_origin_x),y=$(local_second_origin_y),z=$(local_second_origin_z),dx=$(local_dx),dy=$(local_dy),dz=$(local_dz)] run $(local_cmd)