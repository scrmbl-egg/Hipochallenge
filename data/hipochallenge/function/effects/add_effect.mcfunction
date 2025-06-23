# params:
    # dest_st
    # dest_path
    # id
    # amplifier
    # duration_seconds
    # hide_particles

$data modify storage $(dest_st) $(dest_path) append value {id:$(id),amplifier:$(amplifier),duration_seconds:$(duration_seconds),hide_particles:$(hide_particles)}
