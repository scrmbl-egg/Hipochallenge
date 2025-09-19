#>hipochallenge:equipment/clear
#
# Clears all the player's equipment, attributes, and leftover entities.
#
# @context player

clear @s *
function hipochallenge:util/attribute/reset_all

# cleanup
## NOTE:
# the following function tag encapsulates all functions that dispose resources
# or kill temporary entities owned by the player.
function #core_hc:equipment/on_round_end
