local storagedodge = 98798644 -- storage do dodge
local cor = 35 -- cor do texto
local effect = 30 -- id do magic effect 
local msg = "Dodge" -- msg
 
local dodge = { 
    {min = 1, max = 2, chance = 2}, -- se o dodge tiver entre 1 e 2 tem 10% de chance de da dodge.
    {min = 3, max = 4, chance = 10}, -- podem ser configurada portanto que não passe do limite
    {min = 5, max = 6, chance = 29}, -- vocês pode adicionar mas se quiserem
    {min = 7, max = 8, chance = 34},
    {min = 9, max = 10, chance = 36},
    {min = 11, max = math.huge, chance = 18}
}
 
function onStatsChange(cid, attacker, type, combat, value)
    if not isCreature(cid) then
        return false
    end
    for _, tudo in pairs(dodge) do
        if getPlayerStorageValue(cid, storagedodge) >= tudo.min and getPlayerStorageValue(cid, storagedodge) <= tudo.max then
            local chancex = math.random(1, 100)
            if chancex <= tudo.chance then
                if combat ~= COMBAT_HEALING then
                    doSendMagicEffect(getCreaturePosition(cid), effect)
                    doSendAnimatedText(getCreaturePosition(cid), msg, cor)
                    return false
                end
            end
        end
    end
    return true
end