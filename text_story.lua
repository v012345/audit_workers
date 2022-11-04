require "prototype_table"
---@class text_story: prototype_table
text_story = {}
setmetatable(text_story, { __index = prototype_table })
text_story.name = "text_story"
function text_story:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end
return text_story
