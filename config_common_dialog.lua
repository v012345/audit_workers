require "prototype_table"
---@class config_common_dialog: prototype_table
config_common_dialog = {}
setmetatable(config_common_dialog, { __index = prototype_table })
config_common_dialog.name = "config_common_dialog"
function config_common_dialog:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if row.gift_id == "0" then
            if row.gift_num ~= "0" then
                print(self.name ..
                    " ( id : " .. row.id .. " ) gift_num should be 0 , but " ..
                    row.gift_num .. " given")
            end
            if row.recharge_id ~= "0" then
                print(self.name ..
                    " ( id : " .. row.id .. " ) recharge_id should be 0 , but " ..
                    row.recharge_id .. " given")
            end
        else
            local gift_id = SplitString(row.gift_id, "%|")
            local gift_num = SplitString(row.gift_num, "%|")
            if #gift_num ~= #gift_id then
                print(self.name ..
                    " ( id : " .. row.id .. " ) gift_num and gift_id does not match")
            end
            for _, v in pairs(gift_id) do
                local gift, item_table = GetItemById(v)
                if not gift then
                    if item_table then
                        print(self.name ..
                            " ( id : " .. row.id .. " ) gift_id has " .. v .. " but miss in " .. item_table)
                    else
                        print(self.name ..
                            " ( id : " .. row.id .. " ) gift_id has " .. v .. " , it beyond the range of item_base ")
                    end

                end

            end
            if row.recharge_id ~= "0" and not recharge_main:isHasId(row.recharge_id) then
                print(self.name ..
                    " ( id : " .. row.id .. " ) recharge_id has " .. row.recharge_id .. " but miss in recharge_main")
            end

        end

    end

end

return config_common_dialog
