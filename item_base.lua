require "prototype_table"
---@class item_base: prototype_table
item_base = {}
setmetatable(item_base, { __index = prototype_table })
item_base.name = "item_base"
function item_base:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        -- 没人会改吧 , 没有会改吧
        -- print(Dump(text_ui:getRowDataById(row.name_type)))
        -- print(Dump(text_ui:getRowDataById(row.name_english_type)))
    end
end

return item_base
