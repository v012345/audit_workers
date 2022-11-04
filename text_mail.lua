require "prototype_table"
---@class text_mail: prototype_table
text_mail = {}
setmetatable(text_mail, { __index = prototype_table })
text_mail.name = "text_mail"
function text_mail:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end
return text_mail
