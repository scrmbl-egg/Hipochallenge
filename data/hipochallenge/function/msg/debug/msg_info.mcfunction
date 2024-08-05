# params: msg

$tellraw @a[tag=debug] [{"text":"","hoverEvent":{"action":"show_text","value":[{"translate":"hc.msg.debug","fallback":"Debug"}]}},{"bold":true,"color":"green","text":">> "},{"bold":true,"color":"gray","text":"["},{"bold":true,"color":"gray","translate":"hc.msg.info","fallback":"INFO"},{"bold":true,"color":"gray","text":"] "},{"color":"gray","italic":true,"text":"$(msg)"}]