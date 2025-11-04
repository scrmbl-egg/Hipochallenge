#>core_hc:trigger/tick
#
# Checks if the trigger scoreboards are triggered, and executes their assigned
# procedures / functions.

## info
execute as @a \
    if predicate core_hc:trigger/triggered_info \
    run \
    function core_hc:trigger/info

## ls
execute as @a \
    if predicate core_hc:trigger/triggered_ls \
    run \
    function core_hc:trigger/ls

## c*
# tank
execute as @a \
    if predicate core_hc:trigger/triggered_ctank \
    run \
    function core_hc:trigger/ctank

# marksman
execute as @a \
    if predicate core_hc:trigger/triggered_cmarksman \
    run \
    function core_hc:trigger/cmarksman

# assassin
execute as @a \
    if predicate core_hc:trigger/triggered_cassassin \
    run \
    function core_hc:trigger/cassassin

# support
execute as @a \
    if predicate core_hc:trigger/triggered_csupport \
    run \
    function core_hc:trigger/csupport

# recon
execute as @a \
    if predicate core_hc:trigger/triggered_crecon \
    run \
    function core_hc:trigger/crecon

# assault
execute as @a \
    if predicate core_hc:trigger/triggered_cassault \
    run \
    function core_hc:trigger/cassault

## k*
# 1 (kit 1)
execute as @a \
    if predicate core_hc:trigger/triggered_k1 \
    run \
    function core_hc:trigger/k1

# 2 (kit 2)
execute as @a \
    if predicate core_hc:trigger/triggered_k2 \
    run \
    function core_hc:trigger/k2

# 3 (kit 3)
execute as @a \
    if predicate core_hc:trigger/triggered_k3 \
    run \
    function core_hc:trigger/k3

## p*
# 1 (perk 1)
execute as @a \
    if predicate core_hc:trigger/triggered_p1 \
    run \
    function core_hc:trigger/p1

# 2 (perk 2)
execute as @a \
    if predicate core_hc:trigger/triggered_p2 \
    run \
    function core_hc:trigger/p2

# 3 (perk 3)
execute as @a \
    if predicate core_hc:trigger/triggered_p3 \
    run \
    function core_hc:trigger/p3

## proj_cooldown
execute as @a \
    if predicate core_hc:trigger/triggered_proj_cooldown \
    run \
    function core_hc:trigger/proj_cooldown

## npc_*
# tank
execute as @a \
    if predicate core_hc:trigger/triggered_npc_tank \
    run \
    function core_hc:trigger/npc_tank

# marksman
execute as @a \
    if predicate core_hc:trigger/triggered_npc_marksman \
    run \
    function core_hc:trigger/npc_marksman

# assassin
execute as @a \
    if predicate core_hc:trigger/triggered_npc_assassin \
    run \
    function core_hc:trigger/npc_assassin

# support
execute as @a \
    if predicate core_hc:trigger/triggered_npc_support \
    run \
    function core_hc:trigger/npc_support

# recon
execute as @a \
    if predicate core_hc:trigger/triggered_npc_recon \
    run \
    function core_hc:trigger/npc_recon

# assault
execute as @a \
    if predicate core_hc:trigger/triggered_npc_assault \
    run \
    function core_hc:trigger/npc_assault

## kill_nearby_npc
execute as @a \
    if predicate core_hc:trigger/triggered_kill_nearby_npc \
    run \
    function core_hc:trigger/kill_nearby_npc with entity @s
# player.UUID is needed

## kill_all_npcs
execute as @a \
    if predicate core_hc:trigger/triggered_kill_all_npcs \
    run \
    function core_hc:trigger/kill_all_npcs with entity @s
# player.UUID is needed
