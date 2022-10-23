require "prototype_table"
---@class item_superskill_config_type1: prototype_table
item_superskill_config_type1 = {}
setmetatable(item_superskill_config_type1, { __index = prototype_table })
item_superskill_config_type1.name = "item_superskill_config_type1"
item_superskill_config_type1.role_type = 1
function item_superskill_config_type1:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_name:isHasId(row.name_id) then
            print(self.name, row.id, "name_id")
        end
        if not text_content:isHasId(row.desc_id) then
            print(self.name, row.id, "desc_id")
        end
        if row.occupation ~= tostring(self.role_type) then
            print(self.name, row.id, "occupation")
        end
        if not text_ui:isHasId(row.desc_features) then
            print(self.name, row.id, "desc_features")
        end
        if not res_spine:isHasId(SplitString(row.spine_id, "%|")[1]) then
            print(self.name, row.id, "spine_id")
        end
        local star_configs = SplitString(row.star_config, "%|")
        if #star_configs ~= 10 then
            print(self.name, row.id, "star_config should have 10 items")
        end
        for _, star_config in pairs(star_configs) do
            if not other_superskill_star:isHasId(star_config) then
                print(self.name, row.id, "has ", star_config, " miss in other_superskill_star")
            end
        end
    end
end

return item_superskill_config_type1
