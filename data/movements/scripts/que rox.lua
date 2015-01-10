function onStepIn(cid, item, position, fromPosition)
doSendAnimatedText(getPlayerPosition(cid), "QUE ROX", TEXTCOLOR_DARKRED)
doPlayerPopupFYI(cid,"ADIQUIRA SUA VIP DIGITANDO !buyvip")
        doPlayerSendTextMessage(cid,18,""..getPlayerName(cid).." acesse http://www.xtibia.com/forum/user/251027-subwat")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_RED)
if actionid == 7779 and status == 0 then
doPlayerSendTextMessage(cid, 22, msg3)
setPlayerStorageValue(cid,471,1)
else
doPlayerSendTextMessage(cid, 22, msg1)
setPlayerStorageValue(cid,471,0)


end
end


