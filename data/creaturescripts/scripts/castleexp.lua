function onLogin(cid)

local rate = 1.1 -- 20%
local config = {
welvip = "sua guild domina o CASTLE 24H você tem "..((rate - 1)*100).."% de exp a mais agora!",
not_vip = "a guild que domina o CASTLE 24H ganha "..((rate - 1)*100).."% a mais de experiencia!",
s = 4538, -- storage vip
}

if getPlayerStorageValue(cid, config.s) - os.time() >= 1 then
doPlayerSetExperienceRate(cid, rate)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.welvip)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.not_vip)
end
return TRUE
end