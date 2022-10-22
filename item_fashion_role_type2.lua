require "item_fashion_role_type1"
---@class item_fashion_role_type2: item_fashion_role_type1
item_fashion_role_type2 = {}
setmetatable(item_fashion_role_type2, { __index = item_fashion_role_type1 })
item_fashion_role_type2.name = "item_fashion_role_type2"
item_fashion_role_type2.role_type = 2
return item_fashion_role_type2
