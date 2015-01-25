local money = 150
local lever = {
[7000] = {1,2268},
[7001] = {1,2278},
[7002] = {1,2293},
[7003] = {1,2305},
[7004] = {1,2313},
[7005] = {1,2273},
[7006] = {1,2261},
[7007] = {1,2276},
[7008] = {1,2173}

}
function onUse(cid,item,fromPosition,itemEx,toPosition)
    if getPlayerMoney(cid) <= money then
    return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "voce tem que ter 150Gps para comprar esse item.")
    end
    	doPlayerRemoveMoney(cid, money)		
       	doPlayerAddItem(cid,lever[item.actionid][2])
doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doSendAnimatedText(fromPosition, "Comprado", TEXTCOLOR_RED)
       	doPlayerSendTextMessage(cid,22,"voce comprou um(a) " .. getItemNameById(lever[item.actionid][2]))
       	doSendMagicEffect(getCreaturePosition(cid), math.random(28))
    return true
end