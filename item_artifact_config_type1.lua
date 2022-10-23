require "prototype_table"
---@class item_artifact_config_type1: prototype_table
item_artifact_config_type1 = {}
setmetatable(item_artifact_config_type1, { __index = prototype_table })
item_artifact_config_type1.name = "item_artifact_config_type1"
item_artifact_config_type1.role_type = 1
function item_artifact_config_type1:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        local access_type_ids = SplitString(row.access_type_id, "%|")
        for _, access_type_id in pairs(access_type_ids) do
            if not config_get_type:isHasId(access_type_id) then
                print(string.format("%s ( id : %s ) access_type_id has %s , but miss in config_get_type", self.name,
                    row.id, access_type_id))
            end
        end
        if row.video ~= "0" and not res_video:isHasId(row.video) then
            print(string.format("%s ( id : %s ) video has %s , but miss in res_video", self.name,
                row.id, row.video))
        end
    end
end

return item_artifact_config_type1
