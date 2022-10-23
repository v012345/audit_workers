require "prototype_table"
---@class other_openfunction: prototype_table
other_openfunction = {}
setmetatable(other_openfunction, { __index = prototype_table })
other_openfunction.name = "other_openfunction"
function other_openfunction:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if row.subsystem ~= "0" then
            local subsystem_ids = SplitString(row.subsystem, "%|")
            for _, subsystem_id in pairs(subsystem_ids) do
                -- print(subsystem_id)
                local xx = self:getRowDataById(subsystem_id)
                if xx.subsystem ~= "0" then
                    -- local xx = self:getRowDataById(xx.i)
                    print(row.id, xx.id)
                end
                -- print(xx.subsystem)
            end
        end
    end
end

return other_openfunction
