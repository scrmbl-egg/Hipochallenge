#>hc:equipment/clear
#
# Clears all the player's equipment, attributes, and leftover entities.
#
# @context player

clear @s *
function hc:util/attribute/reset_all

# remove class

# reset class scores
function #core_hc:score/reset_class_scores_to_default_values
