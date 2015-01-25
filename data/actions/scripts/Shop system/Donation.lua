local money = 800000
local lever = {
[6001] = {1,11113},
[6002] = {1,11114},
[6003] = {1,11234},
[6004] = {1,11349},
[6005] = {1,12603},
[6006] = {1,2352},
[6007] = {1,8925},
[6008] = {1,12607},
[6009] = {1,12618},
[6010] = {1,12609},
[6011] = {1,12606},
[6012] = {1,12604},
[6013] = {1,12605},
[6014] = {1,12610},
[6015] = {1,9776},
[6016] = {1,9777},
[6017] = {1,9778},
[6018] = {1,11350},
[6019] = {1,11295},
[6020] = {1,11296},
[6021] = {1,11297},
[6022] = {1,11298},
[6023] = {1,11301}
}
function onUse(cid,item,fromPosition,itemEx,toPosition)
    if getPlayerMoney(cid) <= money then
    return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "voce tem que ter 800000Gps para comprar esse item.")
    end
    	doPlayerRemoveMoney(cid, money)		
       	doPlayerAddItem(cid,lever[item.actionid][2])
doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doSendAnimatedText(fromPosition, "Comprado", TEXTCOLOR_RED)
       	doPlayerSendTextMessage(cid,22,"voce comprou um(a) " .. getItemNameById(lever[item.actionid][2]))
       	doSendMagicEffect(getCreaturePosition(cid), math.random(28))
    return true
end