local money = 10000
local lever = {
[7008] = {1,2173}

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
