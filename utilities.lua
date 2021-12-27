function RandomFloat(max)
    return math.random() * (max or 1)
end

-- Roll a chance 
-- @param chance The chance to roll
-- @return True if the chance was rolled
function RollChanceByPercent(chance)
    return RandomFloat(100) <= chance
end

function TableLength(T)
    local count = 0
    for _ in pairs(T) do
        count = count + 1
    end
    return count
end
