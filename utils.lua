---用给定"字符"分割字符串 , 如果是 "[%." 之类 , 要加上 "%" 可以转义
---@param str string 字符串
---@param delimiter string 单字符
---@return table
function SplitString(str, delimiter)
    local chunks = {}
    for substring in string.gmatch(str, "[^" .. delimiter .. "]+") do
        table.insert(chunks, substring)
    end
    return chunks
end

---通过中间表 item_base 和 角色类型 去查找物品
---@param id number|string 物品 id
---@param role_type number|string|nil 角色类型
---@return nil|table
---@return nil|string
function GetItemById(id, role_type)
    local row_number = item_base:getDataRowCount()
    local item_id = tonumber(id)
    local table_name = nil
    if not role_type then
        role_type = 1
    end
    for i = 1, row_number, 1 do
        local row = item_base:getRowDataByRowNumber(i)
        if tonumber(row.min_id) <= item_id and item_id <= tonumber(row.max_id) then
            local table_item_belong_to = SplitString(row.table_name, "1")
            table_name = table_item_belong_to[1]
            if table_item_belong_to[2] then
                table_name = table_name .. role_type
            end
            break
        end
    end
    if not table_name then
        return nil, nil
    end
    ---@type prototype_table
    local item_table = require(table_name)
    -- print(item_table == item_equip_role_type1)
    return item_table:getRowDataById(id), table_name
end

-- function PrintMissForeignKey(master_table_name,)
    
-- end
