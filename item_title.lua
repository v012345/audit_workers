require "prototype_table"
---@class item_title: prototype_table
item_title = {}
setmetatable(item_title, { __index = prototype_table })
item_title.name = "item_title"
function item_title:check()


end

return item_title
