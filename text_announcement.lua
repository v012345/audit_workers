require "prototype_table"
---@class text_announcement: prototype_table
text_announcement = {}
setmetatable(text_announcement, { __index = prototype_table })
text_announcement.name = "text_announcement"
function text_announcement:check()

end

return text_announcement
