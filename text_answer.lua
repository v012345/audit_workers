require "prototype_table"
---@class text_answer: prototype_table
text_answer = {}
setmetatable(text_answer, { __index = prototype_table })
text_answer.name = "text_answer"
function text_answer:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
        if CountIfInString(row.zhcn, "%%d") ~= CountIfInString(row.vi, "%%d") then
            print(string.format("%s , id = %s , %%d 的数量对匹配", self.name, row.id))
        end
        if CountIfInString(row.zhcn, "%%s") ~= CountIfInString(row.vi, "%%s") then
            print(string.format("%s , id = %s , %%s 的数量对匹配", self.name, row.id))
        end
    end
end

return text_answer
