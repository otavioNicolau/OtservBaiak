function onKill(cid, target)
if(isMonster(target) == TRUE) then
local monster,chance,erro = getCreatureName(target),math.random(1, 100),50
if chance >= 1 and chance <= erro then
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "You killed a ".. getCreatureName(target) .." .")
return TRUE
end
doConvinceCreature(cid, doCreateMonster("".. getCreatureName(target) .."", getCreaturePosition(cid)))
doSendAnimatedText(getCreaturePosition(cid), "".. getCreatureName(target) .."", TEXTCOLOR_GREEN)
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_RED, "The monster ".. getCreatureName(target) .." has reborned!.")
end
return TRUE
end