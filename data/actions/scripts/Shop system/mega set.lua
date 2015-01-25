local money = 100000
local lever = {
[6032] = {1,7735},
[6033] = {1,7959},
[6034] = {1,10943},
[6035] = {1,12391},
[6036] = {1,12574},
[6037] = {25,10759},
[6038] = {25,9678},
[6039] = {25,10569},
[6040] = {25,10310},
[6041] = {25,10139},
[6042] = {25,10136},
[6043] = {25,8857},
[6044] = {25,7460},
[6045] = {25,11362},
[6046] = {25,11350},
[6047] = {25,11349},
[6048] = {25,11360},
[6049] = {25,11301},
[6050] = {25,8302},
[6051] = {25,8303},
[6052] = {25,6538},
[6053] = {25,3954},
[6054] = {25,12385}

}
function onUse(cid,item,fromPosition,itemEx,toPosition)
    if getPlayerMoney(cid) <= money then
    return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "voce tem que ter 100000Gps para comprar esse item.")
    end
        	doPlayerRemoveMoney(cid, money)		
       	doPlayerAddItem(cid,lever[item.actionid][2])
doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doSendAnimatedText(fromPosition, "Comprado", TEXTCOLOR_RED)
       	doPlayerSendTextMessage(cid,22,"voce comprou um(a) " .. getItemNameById(lever[item.actionid][2]))

       	doSendMagicEffect(getCreaturePosition(cid), math.random(28))
    return true
end