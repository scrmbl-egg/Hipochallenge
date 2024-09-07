# storage
    # local_uuid

$summon allay ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"no_collision_entity",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["kill_at_end","spirit"],Passengers:[{id:"minecraft:marker",Tags:["kill_at_end","spirit","spirit_marker"],data:{owner:$(local_uuid),target:$(local_uuid)}}]}