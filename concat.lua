os.execute("chcp 65001 > nul")

function concatenate(...)
    local result = ""

    for k, v in ipairs({ ... }) do
        if type(v) == "string" then
            result = result .. v
        else
            result = result .. tostring(v)
        end
    end

    return result
end