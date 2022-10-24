require "prototype_table"
---@class text_answer: prototype_table
text_answer = {}
setmetatable(text_answer, { __index = prototype_table })
text_answer.name = "text_answer"
function text_answer:check()

end

return text_answer
