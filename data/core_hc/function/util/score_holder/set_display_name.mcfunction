#>core_hc:util/score_holder/set_display_name
#
# Sets the display name of a score holder.
#
# @input
#   score_holder: #[score_holder] string
#       Score holder whose display name will be set.
#   score_objective: #[objective] string
#       Score objective in which the holder's display name will be set.
#   text: ::java::util::text::Text
#       Display name text.

$scoreboard players display name $(score_holder) $(score_objective) $(text)
