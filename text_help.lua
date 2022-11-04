require "prototype_table"
---@class text_help: prototype_table
text_help = {}
setmetatable(text_help, { __index = prototype_table })
text_help.name = "text_help"
function text_help:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end
return text_help
