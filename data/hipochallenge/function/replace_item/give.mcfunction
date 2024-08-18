# params:
    # item_modifier
    # count

$give @s paper[custom_data={item_id:give_item}] $(count)
$function hipochallenge:replace_item/replace {custom_data:"{item_id:give_item}",item_modifier:"$(item_modifier)"}