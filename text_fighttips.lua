require "prototype_table"
---@class text_fighttips: prototype_table
text_fighttips = {}
setmetatable(text_fighttips, { __index = prototype_table })
text_fighttips.name = "text_fighttips"
-- text_content
function text_fighttips:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_content:isHasId(row.text) then
            print(string.format("%s ( id : %s ) text is %s , miss in text_content"
                , self.name, row.id, row.text))
        end
        if row.next_tips ~= "0" then
            if not self:isHasId(row.next_tips) then
                print(string.format("%s ( id : %s ) next_tips is %s , miss in text_fighttips"
                    , self.name, row.id, row.next_tips))
            end
        end
    end
end

return text_fighttips
