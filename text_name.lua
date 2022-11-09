require "prototype_table"
---@class text_name: prototype_table
text_name = {}
setmetatable(text_name, { __index = prototype_table })
text_name.name = "text_name"
function text_name:check()
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
        if CountIfInString(row.zhcn, "%%s") + CountIfInString(row.zhcn, "%%d") > 1 then
            print(string.format("%s , id = %s , 请使用 '%%1:s %%2:d' 这种新格式", self.name, row.id))
        end
        if  string.match(row.vi, "\\[^\\n]") or string.match(row.zhcn, "\\[^\\n]") then
            print(string.format("%s , id = %s , 使用 \\ 有问题 , \\ 后面只能是 n 或者 \\ , 看看不是在空格了", self.name, row.id))
        end
    end
end
return text_name
