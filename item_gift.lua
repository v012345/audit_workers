require "prototype_table"
---@class item_gift: prototype_table
item_gift = {}
setmetatable(item_gift, { __index = prototype_table })
item_gift.name = "item_gift"
function item_gift:check()

    local row_number = self:getDataRowCount()

    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        local name_ids = SplitString(row.name_ids, "%|")
        if #name_ids ~= 4 then
            print(string.format("%s ( id : %s ) should has 4 items in name_ids", self.name, row.id))
        end
        local name_id = name_ids[1]
        for _, v in pairs(name_ids) do
            if name_id ~= v then
                print(string.format("%s ( id : %s ) name_ids should has 4 same items", self.name, row.id))
            end
        end
        if not text_name:isHasId(name_id) then
            print(string.format("%s ( id : %s ) name_ids has %s , but miss in text_name", self.name, row.id, name_id))
        end
        if not text_content:isHasId(row.desc_id) then
            print(string.format("%s ( id : %s ) desc_id has %s , but miss in text_content", self.name, row.id,
                row.desc_id))
        end
        if not (1 <= tonumber(row.type) and tonumber(row.type) <= 3) then
            print(string.format("%s ( id : %s ) type should be 1,2,3 , but % given", self.name, row.id,
                row.type))
        end

        local rand_types = SplitString(row.rand_type, "%|")
        local item_ids = SplitString(row.item_id, "%|")
        local item_num_maxs = SplitString(row.item_num_max, "%|")
        local item_num_mins = SplitString(row.item_num_min, "%|")
        local item_rates = SplitString(row.item_rate, "%|")
        local drop_bindings = SplitString(row.drop_binding, "%|")
        local preview_item_ids = SplitString(row.preview_item_id, "%|")
        local preview_item_nums = SplitString(row.preview_item_num, "%|")

        -- print()
        if row.item_id ~= row.preview_item_id and row.preview_item_id ~= "0" then
            local item_id_map = {}
            for _, v in pairs(item_ids) do
                item_id_map[v] = true
            end

            local preview_item_id_map = {}
            for _, v in pairs(preview_item_ids) do
                preview_item_id_map[v] = true
            end

            for key, _ in pairs(item_id_map) do
                if not preview_item_id_map[key] then
                    print(string.format("%s ( id : %s) item_id has %s , but miss in column preview_item_id", self.name,
                        row.id, key))
                end
            end
            for key, _ in pairs(preview_item_id_map) do
                if not item_id_map[key] then
                    print(string.format("%s ( id : %s) preview_item_id has %s , but miss in column item_id", self.name,
                        row.id, key))
                end
            end
            -- for _, item_id in pairs(item_ids) do
            -- 看物品是否存在
            -- end
        else
            for _, item_id in pairs(item_ids) do
                local item_info, item_table_name = GetItemById(item_id)
                if not item_table_name then
                    print(string.format("%s ( id : %s ) item_ids has %s is a wrong item id", self.name, row.id, item_id))
                elseif not item_info then
                    print(string.format("%s ( id : %s ) item_ids has %s , but miss in %s", self.name, row.id, item_id,
                        item_table_name))
                end
            end
        end
    end
end

return item_gift
