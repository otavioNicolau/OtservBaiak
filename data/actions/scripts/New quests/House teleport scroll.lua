-- ITEM
if item.uid == 3019 then
playervoc = getPlayerVocation(cid)
queststatus = getPlayerStorageValue(cid,3019)

if queststatus == -1 then
if playervoc == 1 then
doPlayerSendTextMessage(cid,22,"Você achou uma wand")
doPlayerAddItem(cid,2184,1)
setPlayerStorageValue(cid,3019,1)
else

if playervoc == 2 then
doPlayerSendTextMessage(cid,22,"Você achou uma wand")
doPlayerAddItem(cid,2184,1)
setPlayerStorageValue(cid,3019,1)
else

if playervoc == 3 then
doPlayerSendTextMessage(cid,22,"Você achou uma Tomorrow Arrow.")
doPlayerAddItem(cid,2352,1)
setPlayerStorageValue(cid,3019,1)
else

if playervoc == 4 then
doPlayerSendTextMessage(cid,22,"Você achou uma baiak sword.")
doPlayerAddItem(cid,8931,1)
setPlayerStorageValue(cid,3019,1)
end
else
doPlayerSendTextMessage(cid,22,"Deixe de ser fresco Está vazio!")
end
return 1
end