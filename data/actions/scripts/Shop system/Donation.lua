local coin = 2160,2153
local lever = {
[6001] = {80000,11113},
[6002] = {80000,11114},
[6003] = {25,5956},
[6004] = {25,11115},
[6005] = {25,12610},
[6006] = {25,12609},
[6007] = {25,12607},
[6008] = {25,12606},
[6009] = {25,12605},
[6010] = {25,12604},
[6011] = {25,12603},
[6012] = {25,7735},
[6013] = {25,2284},
[6014] = {25,2275},
[6015] = {25,2296},
[6016] = {25,2574},
[6017] = {25,7289},
[6018] = {25,10134},
[6019] = {25,9969},
[6020] = {25,7708},
[6021] = {25,8752},
[6022] = {125,6388},
[6023] = {25,7409},
[6024] = {25,10552},
[6025] = {25,12574},
[6026] = {25,5810},
[6027] = {25,12427},
[6028] = {25,2348},
[6029] = {25,10138},
[6030] = {25,10140},
[6031] = {25,12285},
[6032] = {25,12288},
[6033] = {25,11128},
[6034] = {25,11114},
[6035] = {25,11113},
[6036] = {25,10925},
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
                  if doPlayerRemoveItem(cid,coin,lever[item.actionid][3]) == FALSE then
                  return doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "you need "..lever[item.actionid][1].." " ..getItemNameById(coin))
                  end
                                doPlayerAddItem(cid,lever[item.actionid][2])
                                doPlayerSendTextMessage(cid,22,"you bought one " .. getItemNameById(lever[item.actionid][2]))
                                doSendMagicEffect(getCreaturePosition(cid), math.random(28,30))
                return true
end