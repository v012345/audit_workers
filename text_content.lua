require "prototype_table"
---@class text_content: prototype_table
text_content = {}
setmetatable(text_content, { __index = prototype_table })
text_content.name = "text_content"
function text_content:check()

    -- -- print(row.zhcn)
    -- local a =  CountIfInString(row.zhcn,"%%[A-Za-z]")
    -- for key, value in pairs(a) do
    --     print(value)
    -- end
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end

return text_content
