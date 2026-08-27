#>hc:util/effect/clear_bulk
#
# Clears the effects from the specified target entities.
#
# @input
#   targets: #[entity] #[selector] string
#       Selector of entities whose specified effect will be cleared.
#   effect: #[id="mob_effect"] string
#       Effect that will be cleared.

$effect clear $(targets) $(effect)
