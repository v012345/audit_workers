require "prototype_table"
---@class text_tutor: prototype_table
text_tutor = {}
setmetatable(text_tutor, { __index = prototype_table })
text_tutor.name = "text_tutor"
function text_tutor:check()
    local row_number = self:getDataRowCount()
    local output = io.open(self.name .. ".txt", "w")
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
        if string.match(row.vi, "\\[^\\n]") or string.match(row.zhcn, "\\[^\\n]") then
            print(string.format("%s , id = %s , 使用 \\ 有问题 , \\ 后面只能是 n 或者 \\ , 看看不是在空格了"
                , self.name, row.id))
        end
        local patterns = {
            "{%d+, %d+, %d+}",
            "{%d+,%d+, %d+}",
            "{%d+, %d+,%d+}"
        }
        for _, pattern in pairs(patterns) do
            if string.find(row.vi, pattern) or string.find(row.zhcn, pattern) then
                print(string.format("%s , id = %s , 中的 {???,???,???} 逗号后面不能有空格"
                    , self.name, row.id))
            end
        end
        if CountIfInString(row.zhcn, "{%d+,%d+,%d+}") ~= CountIfInString(row.vi, "{%d+,%d+,%d+}") then
            print(string.format("%s , id = %s , {???,???,???} 的数量不匹配", self.name, row.id))
        end
        if output then
            local vi = row.vi
            vi = vi:gsub("{(%d+)[ ]?[%.,][ ]?(%d+)[ ]?[%.,][ ]?(%d+)}", "{%1,%2,%3}")
            output:write(vi)
            output:write("\n")
        end
    end

    if output then
        output:close()
    end

end

return text_tutor
