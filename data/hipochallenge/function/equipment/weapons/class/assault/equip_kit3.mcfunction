# TODO: Add names and descriptions

# TODO: Add assault shield
function hipochallenge:equipment/weapons/shield/equip_shield

item replace entity @s hotbar.0 with diamond_sword[unbreakable={show_in_tooltip:false}]

# FIXME: Change PUSH_PROJECTILE item

item replace entity @s hotbar.1 with paper[item_name='"Proyectil de embestida"',food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}]