require "prototype_table"
---@class other_shop_shelf: prototype_table
other_shop_shelf = {}
setmetatable(other_shop_shelf, { __index = prototype_table })
other_shop_shelf.name = "other_shop_shelf"
local exclude_ids = {}
function other_shop_shelf:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not exclude_ids[row.id] then
            local goods_ids = SplitString(row.goods_id, "%|")
            for _, goods_id in pairs(goods_ids) do
                if not other_shop_goods:isHasId(goods_id) then
                    print(string.format("%s ( id : %s ) goods_id has %s , miss in other_shop_goods", self.name, row.id,
                        goods_id))
                end
            end
        end
    end

end

return other_shop_shelf
