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
        if row.occupation ~= tostring(self.role_type) then
            print(self.name .. " ( id : " .. row.id .. " ) occupation should be " .. self.role_type)
        end
        if row.suit_id ~= "-1" and not item_suit:isHasId(row.suit_id) then
            print(self.name .. " ( id : " .. row.id .. " ) item_suit has " .. row.suit_id .. " but miss in item_suit")
        end

        local show_items = SplitString(row.show_item, "%|")
        if row.last_time == "0" then
            if #show_items == 1 then
                if row.id ~= row.show_item then
                    print(self.name ..
                        " ( id : " .. row.id .. " ) show_item should be " .. row.id .. " , " .. row.show_item .. " given")
                end
            end
        end

    end
    self:check_show_item_by_table_item_fashion_suit()
end

function item_fashion_role_type1:check_show_item_by_table_item_fashion_suit()
    for j = 1, item_fashion_suit:getDataRowCount(), 1 do

        local row = item_fashion_suit:getRowDataByRowNumber(j)
        if row.occupation == tostring(self.role_type) then
            -- print(row.occupation)
            local suit_parts = row.suit_parts
            for _, suit_part in pairs(SplitString(suit_parts, "%|")) do
                local suit_info = self:getRowDataById(suit_part)
                if suit_info then
                    if suit_info.show_item ~= suit_parts then
                        print(self.name ..
                            " ( id : " ..
                            suit_info.id ..
                            " ) show_item should be " .. suit_parts .. " , " .. suit_info.show_item .. " given")
                    end
                else
                    print(item_fashion_suit.name .. " has " .. suit_part .. "but " .. self.name .. " miss")
                end

            end
        end
    end
end

return item_fashion_role_type1
