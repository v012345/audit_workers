require "prototype_table"
---@class recharge_rebate: prototype_table
recharge_rebate = {}
setmetatable(recharge_rebate, { __index = prototype_table })
recharge_rebate.name = "recharge_rebate"
function recharge_rebate:check()

end

return recharge_rebate
