require "prototype_table"
---@class item_superskill_config_type1: prototype_table
item_superskill_config_type1 = {}
setmetatable(item_superskill_config_type1, { __index = prototype_table })
item_superskill_config_type1.name = "item_superskill_config_type1"
item_superskill_config_type1.role_type = 1
function item_superskill_config_type1:check()
    local row_number = self:getDataRowCount()
    print(self.name)
    print(row_number)

    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
    --     print(self.name)
    --     if not text_name:isHasId(row.name_id) then
    --         print(self.name, row.id)
    --     end
    end
end

return item_superskill_config_type1
