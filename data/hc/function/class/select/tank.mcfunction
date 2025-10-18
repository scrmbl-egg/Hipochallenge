#>hc:class/select/tank
#
# Selects the tank class.
#
# @context player

# construct params
data modify storage hc:temp select_class_params.value \
    set from storage hc:main consts.classes[{internal_name:"tank"}].id

# select
function core_hc:class/select_by_number \
    with storage hc:temp select_class_params

# free memory
data remove storage hc:temp select_class_params
