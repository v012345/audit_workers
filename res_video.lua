require "prototype_table"
---@class res_video: prototype_table
res_video = {}
setmetatable(res_video, { __index = prototype_table })
res_video.name = "res_video"
function res_video:check()

end

return res_video
