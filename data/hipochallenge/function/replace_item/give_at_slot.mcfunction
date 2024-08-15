# params:
    # item_slot
    # item_modifier

$item replace entity @s $(item_slot) paper[custom_data={item_id:give_item}] 1
$function hipochallenge:replace_item/replace {custom_data:"{item_id:give_item}",item_modifier:"$(item_modifier)"}