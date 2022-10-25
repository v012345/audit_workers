require "prototype_table"
---@class item_artifact_extend: prototype_table
item_artifact_extend = {}
setmetatable(item_artifact_extend, { __index = prototype_table })
item_artifact_extend.name = "item_artifact_extend"
function item_artifact_extend:check()

end

return item_artifact_extend
