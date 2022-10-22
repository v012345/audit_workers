print("--------- start lua scripts ---------")
package.path = './scripts/?.lua;' .. package.path
require "load_all_tables"
require "utils"
buff_rule:check()
-- entity_ai:check()
-- item_fashion_role_type1:check()
print("--------- exit lua scripts ---------")