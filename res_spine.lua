require "prototype_table"
---@class res_spine: prototype_table
res_spine = {}
setmetatable(res_spine, { __index = prototype_table })
res_spine.name = "res_spine"
function res_spine:check()

end
return res_spine
