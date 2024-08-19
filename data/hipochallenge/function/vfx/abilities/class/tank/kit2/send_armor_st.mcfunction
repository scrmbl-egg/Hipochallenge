# storage:
    # local_int_self_pos_x 
    # local_int_self_pos_y
    # local_int_self_pos_z
    # local_element (std/map, uuid)

$execute as @s at @s run particle vibration{arrival_in_ticks:5,destination:{type:"block",pos:[$(local_int_self_pos_x),$(local_int_self_pos_y),$(local_int_self_pos_z)]}} ~ ~ ~ 0.1 0.1 0.1 0.1 1 force