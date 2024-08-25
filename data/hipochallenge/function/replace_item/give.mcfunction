# params:
    # item_modifier
    # count

# TODO: add support for stacking items that are already in the player's inventory

$give @s paper[custom_data={item_id:give_item}] $(count)
$function hipochallenge:replace_item/replace {custom_data:"{item_id:give_item}",item_modifier:"$(item_modifier)"}