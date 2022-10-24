require "prototype_table"
---@class res_fashion: prototype_table
res_fashion = {}
setmetatable(res_fashion, { __index = prototype_table })
res_fashion.name = "res_fashion"
function res_fashion:check()

end

return res_fashion
