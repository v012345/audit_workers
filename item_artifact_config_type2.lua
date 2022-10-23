---@class item_artifact_config_type2: item_artifact_config_type1
item_artifact_config_type2 = {}
setmetatable(item_artifact_config_type2, { __index = item_artifact_config_type1 })
item_artifact_config_type2.name = "item_artifact_config_type2"
item_artifact_config_type2.role_type = 2
return item_artifact_config_type2
