# storage:
    # RECON_K2_FLARE_ARROW_GLOWING_DURATION_SECONDS
    # RECON_K2_FLARE_ARROW_BLINDNESS_AMPLIFIER
    # RECON_K2_FLARE_ARROW_BLINDNESS_DURATION_SECONDS

function hipochallenge:mechanics/detection/add

$effect give @s glowing $(RECON_K2_FLARE_ARROW_GLOWING_DURATION_SECONDS) 0 false
$effect give @s blindness $(RECON_K2_FLARE_ARROW_BLINDNESS_DURATION_SECONDS) $(RECON_K2_FLARE_ARROW_BLINDNESS_AMPLIFIER) false