#>core_hc:team/team1/color/set_vanilla
#
# Sets the vanilla color of the first team.
#
# @input
#   color: #[color="named"] ::java::util::text::TextColor
#       The color that will be seat in the team.

$team modify hc.Team1 color $(color)
