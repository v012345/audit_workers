require "prototype_table"
---@class item_material: prototype_table
item_material = {}
setmetatable(item_material, { __index = prototype_table })
item_material.name = "item_material"
function item_material:check()
    local row_number = self:getDataRowCount()
    -- print(Dump(text_name:getRowDataById(6720)))
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_name:isHasId(row.name_id) then
            print(string.format("%s ( id : %s ) name_id has %s , but miss in text_name", self.name, row.id, row.name_id))
        end
        if not text_content:isHasId(row.desc_id) then
            print(string.format("%s ( id : %s ) desc_id has %s , but miss in text_content", self.name, row.id,
                row.desc_id))
        end

        local access_type_ids = SplitString(row.access_type_id, "%|")
        for _, access_type_id in pairs(access_type_ids) do
            if access_type_id ~= "0" and not config_get_type:isHasId(access_type_id) then
                print(string.format("%s ( id : %s ) access_type_id has %s , but miss in config_get_type", self.name,
                    row.id,
                    access_type_id))
            end
        end
        if row.goods_id ~= "0" and not entity_goods:isHasId(row.goods_id) then
            print(string.format("%s ( id : %s ) goods_id has %s , but miss in entity_goods", self.name, row.id,
                row.goods_id))
        end
    end
end

return item_material
