local money = 10000
local lever = {
[6024] = {1,11235},
[6025] = {1,11236},
[6026] = {1,11257},
[6027] = {1,11115},
[6028] = {1,11237},
[6029] = {1,11138},
[6030] = {1,11362},
[6031] = {1,10569}

}
function onUse(cid,item,fromPosition,itemEx,toPosition)
    if getPlayerMoney(cid) <= money then
    return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "voce tem que ter 10000Gps para comprar esse item.")
    end
        	doPlayerRemoveMoney(cid, money)		
       	doPlayerAddItem(cid,lever[item.actionid][2])
doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doSendAnimatedText(fromPosition, "Comprado", TEXTCOLOR_RED)
       	doPlayerSendTextMessage(cid,22,"voce comprou um(a) " .. getItemNameById(lever[item.actionid][2]))
       	doSendMagicEffect(getCreaturePosition(cid), math.random(28))
    return true
end