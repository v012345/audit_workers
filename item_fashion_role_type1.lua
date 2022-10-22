require "prototype_table"
---@class item_fashion_role_type1: prototype_table
item_fashion_role_type1 = {}
setmetatable(item_fashion_role_type1, { __index = prototype_table })
item_fashion_role_type1.name = "item_fashion_role_type1"
function item_fashion_role_type1:check()
    local row_number = self:getDataRowCount()
    print(row_number)
    -- for i = 1, row_number, 1 do
    --     if text_content:isHasId() then
    --         local row = self:getRowDataByRowNumber(i)
    --         if not text_content:isHasId(row.desc_id) then
    --             print(123)
    --         end
    --     end
    -- end
end

return item_fashion_role_type1
