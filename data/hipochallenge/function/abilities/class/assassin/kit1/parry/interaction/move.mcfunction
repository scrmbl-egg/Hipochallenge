# interaction must be kept in the same position relative to the player as long as it lives
# desired effect: interaction must move along with the player, but keep its relative position with the player, so that if the player rotates their view, the interaction is not affected

# WARNING: THIS IS RUN AS THE INTERACTION

# steps to follow:
    # get the owner uuid
    # as owner uuid, get position
    # get owner's relative x, y & z interaction scoreboards, and add those coordinates to the owner's pos
    # teleport interaction to the result coordinates

# TODO: implement interaction teleportations