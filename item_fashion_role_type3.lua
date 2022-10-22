require "item_fashion_role_type1"
---@class item_fashion_role_type3: item_fashion_role_type1
item_fashion_role_type3 = {}
setmetatable(item_fashion_role_type3, { __index = item_fashion_role_type1 })
item_fashion_role_type3.name = "item_fashion_role_type3"
item_fashion_role_type3.role_type = 3
return item_fashion_role_type3
