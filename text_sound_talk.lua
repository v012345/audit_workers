require "prototype_table"
---@class text_sound_talk: prototype_table
text_sound_talk = {}
setmetatable(text_sound_talk, { __index = prototype_table })
text_sound_talk.name = "text_sound_talk"
function text_sound_talk:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if CountIfInString(row.vi, "&") > 0 then
            print(string.format("%s , id = %s , 存在 &", self.name, row.id))
        end
    end
end
return text_sound_talk
