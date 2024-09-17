# params:
    # selector      (entities the raycast will look for)
    # collision_tag (tag of blocks that will stop the raycast)
    # destroy_tag   (tag of blocks that will be destroyed by the raycast)
    # pierce        (boolean: when an entity in selector is found, does the ray keep going?)
    # step_length   (length in 3d space of the recursive raycast step)
    # dx            (size x)
    # dy            (size y)
    # dz            (size z)
    # cmd           (command executed when selector entity is found)
# NOTE: maybe we should add a yaw and pitch parameter, or instead of a length, a 3d vector

# TODO: implement raycasts

# NOTE: use AABBs for the implementation, since they provide precise collision detection, and can
# also have bigger sizes