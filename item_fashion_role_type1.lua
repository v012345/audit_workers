require "prototype_table"
---@class item_fashion_role_type1: prototype_table
item_fashion_role_type1 = {}
setmetatable(item_fashion_role_type1, { __index = prototype_table })
item_fashion_role_type1.name = "item_fashion_role_type1"
item_fashion_role_type1.role_type = 1

function item_fashion_role_type1:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_content:isHasId(row.desc_id) then
            print(self.name .. " desc_id " .. row.desc_id)
        end
        local item, item_table = GetItemById(row.destory_id, self.role_type)
        -- print(item_table)
        if not item then
            if item_table then
                print(self.name .. " destory_id has " .. row.destory_id .. " but " .. item_table .. " miss")
            else
                print(self.name .. " destory_id has " .. row.destory_id .. " but it does not belong any table")
            end
        end
    end
end

return item_fashion_role_type1
