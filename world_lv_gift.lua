require "prototype_table"
---@class world_lv_gift: prototype_table
world_lv_gift = {}
setmetatable(world_lv_gift, { __index = prototype_table })
world_lv_gift.name = "world_lv_gift"
function world_lv_gift:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        local item_ids = SplitString(row.item_id, "%|")
        local item_nums = SplitString(row.item_num, "%|")
        if #item_ids ~= #item_nums then
            print(string.format("%s ( id : %s ) item_id 与 item_num 个数不对应", self.name, row.id))
        end
        for _, item_id in pairs(item_ids) do
            if item_id ~= "0" then
                local item_info = GetItemById(item_id)
                if not item_info then
                    print(string.format("%s ( id : %s ) item_id %s is nil", self.name, row.id, item_id))
                end
            end


        end
    end
end

return world_lv_gift
