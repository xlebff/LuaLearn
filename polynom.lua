--- an x^n + an-1 x^n-1 + .. + a1 x1 + a0

function powerPoly(coefficients, x)
    local result = 0
    for power, coef in ipairs(coefficients) do
        result = result + coef * x ^ (power - 1)
    end
    return result
end