Config = Config or {}
Config.Dict = Config.Dict or {}

local ResultDict = {}
local ResultDictLength = {}

local function GetRandomItemInDict(dictName)
    local targetDict = ResultDict[dictName]
    if (targetDict) then
        local randomValue = RandomFloat(ResultDictLength[dictName])
        for _, value in pairs(targetDict) do
            if (randomValue <= value.chance_pool) then
                return value.result
            end
        end
    else
        print(string.format("[ERROR] Dict %s not found", dictName))
    end
    return nil
end

Citizen.CreateThread(function()

    for key, value in pairs(Config.Dict) do
        local currentDict = {}
        local totalChance = 0
        for i = 1, #value, 1 do
            local value_2 = value[i]
            totalChance = totalChance + value_2["chance"]
            currentDict[#currentDict + 1] = {
                chance_pool = totalChance,
                result = {
                    item_name = value_2.item_name,
                    items = value_2.items or {},
                    amount = value_2.amount or 0
                }
            }
        end
        ResultDictLength[key] = totalChance
        ResultDict[key] = currentDict

    end

    AddEventHandler(("%s:GetRandomDict"):format(GetCurrentResourceName()), function(dictName, cb)
        if (cb) then
            cb(GetRandomItemInDict(dictName))
        end
    end)

    exports("GetRandomItemInDict", GetRandomItemInDict);
    exports("RollChanceByPercent", RollChanceByPercent)
end)

