require "prototype_table"
---@class other_answer: prototype_table
other_answer = {}
setmetatable(other_answer, { __index = prototype_table })
other_answer.name = "other_answer"
function other_answer:check()
    local correct_answer = {
        ["1"] = "A",
        ["2"] = "B",
        ["3"] = "C",
        ["4"] = "D"
    }
    local college_exam = io.open("college exam.txt", "w")
    local row_number = self:getDataRowCount()
    for i = 1, row_number, 1 do
        local row = self:getRowDataByRowNumber(i)
        if row.type == "1" then
            if college_exam then
                college_exam:write(row.name .. ":\n")
                if text_answer:isHasId(row.topic_word) then
                    local quiz = text_answer:getRowDataById(row.topic_word)
                    ---@type string
                    local question = quiz.zhcn
                    college_exam:write("\n\t" .. question:gsub("@{%d+,%d+,%d+}", "") .. "\n")

                    local answers = SplitString(row.answer, "%|")
                    if #answers ~= 4 then
                        print(string.format("%s id %s answer should has 4 items", self.name, row.id))
                        break;
                    end

                    college_exam:write("\t A : " .. (text_answer:getRowDataById(answers[1]).zhcn or "??") .. "\n")
                    college_exam:write("\t B : " .. (text_answer:getRowDataById(answers[2]).zhcn or "??") .. "\n")
                    college_exam:write("\t C : " .. (text_answer:getRowDataById(answers[3]).zhcn or "??") .. "\n")
                    college_exam:write("\t D : " .. (text_answer:getRowDataById(answers[4]).zhcn or "??") .. "\n")
                    if correct_answer[row.correct_answer] then
                        college_exam:write("\n")
                        college_exam:write("\t答案 : " .. correct_answer[row.correct_answer] .. "\n")
                        college_exam:write("\n")
                        college_exam:write("\n")
                    end
                else
                    print(string.format("missing %s in text_answer", row.topic_word))
                end

            end
        else
            print("other_answer 不支持 图片 题")
        end
    end


end

return other_answer
