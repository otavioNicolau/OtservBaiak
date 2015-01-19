local effect = 30 -- Efeito que vai usar
local storage = 9994 -- Storage que o player precisa ter
local tempo = 5 -- Tempo em segundos

function onLogin(cid)
if getPlayerStorageValue(cid, storage) == 1 then
SendEffect(cid)
end
return TRUE
end

function SendEffect(cid)
doSendMagicEffect(getCreaturePosition(cid), effect)
addEvent(SendEffect, tempo*1000, cid)
return TRUE
end