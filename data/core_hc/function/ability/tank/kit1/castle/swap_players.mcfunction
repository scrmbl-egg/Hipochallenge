#>core_hc:ability/tank/kit1/castle/swap_players
#
# Teleports the players, swapping their positions and rotations.
#
# @context player
# @input
#   self_pos_x: double
#       Executing player's X position coordinate.
#   self_pos_y: double
#       Executing player's Y position coordinate.
#   self_pos_z: double
#       Executing player's Z position coordinate.
#   self_yaw: double
#       Executing player's yaw / Y rotation.
#   self_pitch: double @ -90..90
#       Executing player's yaw / X rotation.
#   other_tag: #[uuid] int[] @ 4
#       Tag of the teleported teammate.
#   other_pos_x: double
#       Teammate's X position coordinate.
#   other_pos_y: double
#       Teammate's Y position coordinate.
#   other_pos_z: double
#       Teammate's Z position coordinate.
#   other_yaw: double
#       Teammate's yaw / Y rotation.
#   other_pitch: double @ -90..90
#       Teammate's pitch / X rotation.

# other to self
$execute as @n[tag=$(other_tag)] \
    positioned $(self_pos_x) $(self_pos_y) $(self_pos_z) \
    rotated $(self_yaw) $(self_pitch) \
    run \
    function hc:util/tp

# self to other
$execute as @s \
    positioned $(other_pos_x) $(other_pos_y) $(other_pos_z) \
    rotated $(other_yaw) $(other_pitch) \
    run \
    function hc:util/tp
