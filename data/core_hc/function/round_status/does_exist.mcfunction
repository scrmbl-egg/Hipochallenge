#>core_hc:round_status/does_exist
#
# A function that works as a predicate to check if the round status bossbar
# exists/is declared or not.
#
# @returns
# Result: positive 32 bit integer if bossbar exists, 0 if it doesn't

return run \
    bossbar get hc:round_status max
