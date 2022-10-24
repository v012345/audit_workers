require "prototype_table"
---@class res_image: prototype_table
res_image = {}
setmetatable(res_image, { __index = prototype_table })
res_image.name = "res_image"
function res_image:check()

end

return res_image
