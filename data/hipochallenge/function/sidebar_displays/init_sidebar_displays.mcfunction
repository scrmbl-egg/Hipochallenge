# init sidebar displays (sidebar scoreboards)

# TODO: the naming for these should probably be "sidebar_display_..."

# match request

scoreboard objectives add match_request_display dummy

scoreboard objectives modify match_request_display displayname {"bold":true,"color":"gold","translate":"hc.sidebar.match_request.new","fallback":"NEW MATCH REQUEST","italic":true}
