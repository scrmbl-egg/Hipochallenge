# storage:
    # local_selector
    # local_dx
    # local_dy
    # local_dz
    # local_cmd
    # local_origin_offset_x
    # local_origin_offset_y
    # local_origin_offset_z

$execute positioned ~$(local_origin_offset_x) ~$(local_origin_offset_y) ~$(local_origin_offset_z) as $(local_selector) if entity @s[dx=$(local_dx),dy=$(local_dy),dz=$(local_dz)] positioned ~-0.999 ~-0.999 ~-0.999 if entity @s[dx=$(local_dx),dy=$(local_dy),dz=$(local_dz)] run $(local_cmd)