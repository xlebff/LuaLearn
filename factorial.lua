function factorial(n, acc)
    local msg = "not defined"

    acc = acc or 1

    if n <= 1 and n >= 0 then
        return acc
    elseif n < 0 then
        return msg
    else
        return factorial(n - 1, acc * n)
    end
end