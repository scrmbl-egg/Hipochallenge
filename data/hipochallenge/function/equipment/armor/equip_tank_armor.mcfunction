#>hipochallenge:equipment/armor/equip_tank_armor
#
# Equips the tank class armor, with the team context's armor color and trim
# material.

## NOTE:
# All loot table armor which has a dyed_color and trim components must use
# the numbers set in the neutral team preset. This is so that later functions
# can apply the different colors.

# clear armor
item replace entity @s armor.head with air 1
item replace entity @s armor.chest with air 1
item replace entity @s armor.legs with air 1
item replace entity @s armor.feet with air 1

# attributes
function hipochallenge:attribute/class/base/set_tank_attributes

# equip default/neutral armor
loot replace entity @s armor.head loot hipochallenge:class/armor/tank/head
loot replace entity @s armor.chest loot hipochallenge:class/armor/tank/chest
loot replace entity @s armor.legs loot hipochallenge:class/armor/tank/legs
loot replace entity @s armor.feet loot hipochallenge:class/armor/tank/feet

# apply team color
execute if predicate hipochallenge:team/is_in_team1 \
    run \
    function core_hc:equipment/armor/apply_team1_color
execute if predicate hipochallenge:team/is_in_team2 \
    run \
    function core_hc:equipment/armor/apply_team2_color

# modify all possible armor items
item modify entity @s armor.head hipochallenge:armor/generic
item modify entity @s armor.chest hipochallenge:armor/generic
item modify entity @s armor.legs hipochallenge:armor/generic
item modify entity @s armor.feet hipochallenge:armor/generic
