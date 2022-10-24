require "prototype_table"
---@class other_shop_goods: prototype_table
other_shop_goods = {}
setmetatable(other_shop_goods, { __index = prototype_table })
other_shop_goods.name = "other_shop_goods"
local exclude_ids = {}
function other_shop_goods:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not exclude_ids[row.id] then
            local item_info, table_name = GetItemById(row.item_id)
            if not table_name or not item_info then
                print(string.format("%s ( id : %s ) item_id is wrong", self.name, row.id))
            end
            local item_info, table_name = GetItemById(row.pay_type)
            if not table_name or not item_info then
                print(string.format("%s ( id : %s ) pay_type is wrong", self.name, row.id))
            end
        end
    end

end

return other_shop_goods
