#>hipochallenge:attribute/class/base/set_recon_attributes
#
# Applies the class player attributes of the recon class.

function core_hc:attribute/class/apply_attributes \
    with storage \
    minecraft:hipochallenge \
    consts.classes[{internal_name:"recon"}].attributes
