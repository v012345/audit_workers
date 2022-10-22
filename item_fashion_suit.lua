require "prototype_table"
---@class item_fashion_suit: prototype_table
item_fashion_suit = {}
setmetatable(item_fashion_suit, { __index = prototype_table })
item_fashion_suit.name = "item_fashion_suit"
function item_fashion_suit:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_name:isHasId(row.name_id) then
            print(self.name .. " name id has " .. row.name_id .. " text_name miss")
        end
        local suit_parts = SplitString(row.suit_parts, "%|")
        ---@type prototype_table
        local item_fashion_role_type = require("item_fashion_role_type" .. row.occupation)
        if not item_fashion_role_type then
            print(self.name .. " 没有 " .. row.occupation .. " 此职业类型")
            break
        end
        for _, suit_part in pairs(suit_parts) do
            if not item_fashion_role_type:isHasId(suit_part) then
                print(self.name .. " has " .. suit_part .. " but " .. item_fashion_role_type.name .. " miss")
            end
        end
    end
end

return item_fashion_suit
