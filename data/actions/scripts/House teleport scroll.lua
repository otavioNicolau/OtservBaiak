
function OnUse (cid, itemid)
local table = {Knight, Paladin, Druid}
if getPlayerVocation(cid) ==t[1] then
doPlayerAddItem(uid, itemid, 8931, 1)
else
doPlayerSendTextMessage(cid, message, color, "Sua vocation não tem permissão para pegar tal item", 1)
if getPlayerVocation(cid) ==t[2] then
doPlayerAddItem(uid, itemid, 2352, 1)
else
doPlayerSendTextMessage(cid, message, color, "Sua vocation não tem permissão para pegar tal item", 1)
if getPlayerVocation(cid) ==t[3] then
doPlayerAddItem(uid, itemid, 2184, 1)
else
doPlayerSendTextMessage(cid, message, color, "Sua vocation não tem permissão para pegar tal item", 1)
if getPlayerStorageValue(uid,itemid, 8931, 2352, 2184) then
print("Você ja fez essa quest")
end
end
end
end
end