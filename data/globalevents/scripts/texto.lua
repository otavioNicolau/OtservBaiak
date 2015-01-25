local config = {
    positions = {
        ["Bem Vindo"] = { x = 160, y = 54, z = 7 },
        ["Edron"] = { x = 155, y = 48, z = 7 },
        ["Vip"] = { x = 152, y = 45, z = 7 },
        ["Castle24H"] = { x = 152, y = 48, z = 7 },
        ["Arena"] = { x = 153, y = 48, z = 7 },
        ["Venom"] = { x = 146, y = 44, z = 7 },
        ["Teleports"] = { x = 154, y = 48, z = 7 },
        ["Tenebra"] = { x = 147, y = 44, z = 7 },
        ["Poi2"] = { x = 149, y = 44, z = 7 },
        ["Anqui"] = { x = 150, y = 44, z = 7 },
        ["Quests"] = { x = 145, y = 44, z = 7 },
        ["Treiners"] = { x = 148, y = 44, z = 7 },
["Templo."] = { x = 172, y = 61, z = 6 },
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 265))
    end
    
    return TRUE
end  