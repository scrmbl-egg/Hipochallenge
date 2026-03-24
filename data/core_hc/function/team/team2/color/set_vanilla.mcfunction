#>core_hc:team/team2/color/set_vanilla
#
# Sets the vanilla color of the second team.
#
# @input
#   color: #[color="named"] ::java::util::text::TextColor
#       The color that will be seat in the team.

$team modify hc.Team2 color $(color)
