# storage:
    # local_name
    # local_amplifier
    # local_secs
    # local_hide

$effect give @s $(local_name) $(local_secs) $(local_amplifier) $(local_hide)
$function hipochallenge:mechanics/suppression/add_secs {duration_seconds:$(local_secs)}