print("--------- start lua scripts ---------")
package.path = './scripts/?.lua;' .. package.path
require "load_all_tables"
require "utils"
-- buff_rule:check()
-- entity_ai:check()
-- item_fashion_role_type1:check()
-- item_fashion_role_type2:check()
-- item_fashion_role_type3:check()
-- item_fashion_role_type4:check()
-- item_fashion_suit:check()
config_common_dialog:check()
print("--------- exit lua scripts ---------")
