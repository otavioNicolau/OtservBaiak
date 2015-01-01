function onLogin(cid)

local rate = 1.3 -- 30%
local config = {
welvip = "você tem "..((rate - 1)*100).."% de exp a mais agora!",
not_vip = "Tornesse DONATE e ganhe "..((rate - 1)*100).."% a mais de experiencia!",
s = 13500, -- storage vip
}

if getPlayerStorageValue(cid, config.s) - os.time() >= 1 then
doPlayerSetExperienceRate(cid, rate)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.welvip)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.not_vip)
end
return TRUE
end