require "prototype_table"
---@class buff_base: prototype_table
buff_base = {}
setmetatable(buff_base, { __index = prototype_table })
buff_base.name = "buff_base"
function buff_base:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if row.rule_id ~= "-1" and not buff_rule:isHasId(row.rule_id) then
            print(string.format("%s ( id : %s) rule_id has %s , but miss in buff_rule", self.name, row.id, row.rule_id))
        end
    end
end

return buff_base
