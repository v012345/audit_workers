require "prototype_table"
---@class entity_goods: prototype_table
entity_goods = {}
setmetatable(entity_goods, { __index = prototype_table })
entity_goods.name = "entity_goods"
function entity_goods:check()
    -- print(Dump(text_name:getRowDataById(8200)))
    -- 我看不明白啊~~~~~~
end

return entity_goods
