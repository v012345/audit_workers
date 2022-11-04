require "prototype_table"
---@class text_error: prototype_table
text_error = {}
setmetatable(text_error, { __index = prototype_table })
text_error.name = "text_error"
function text_error:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end

return text_error
