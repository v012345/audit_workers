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

    end
end

return item_material
