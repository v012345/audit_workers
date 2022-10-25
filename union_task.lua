require "prototype_table"
---@class union_task: prototype_table
union_task = {}
setmetatable(union_task, { __index = prototype_table })
union_task.name = "union_task"
function union_task:check()
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if not text_ui:isHasId(row.name_id) then
            print(string.format("%s ( id : %s ) name_id has %s , but miss in text_ui", self.name, row.id, row.name_id))
        end
        if not text_ui:isHasId(row.desc_id) then
            print(string.format("%s ( id : %s ) desc_id has %s , but miss in text_ui", self.name, row.id, row.name_id))
        end
        if row.task_param ~= row.pass_count then
            print(string.format("%s ( id : %s ) task_param should = pass_count", self.name, row.id))
        end

        local item_info = GetItemById(row.award_id)
        if not item_info then
            print(string.format("%s ( id : %s ) award_id is wrong", self.name, row.id))
        end

    end
end

return union_task
