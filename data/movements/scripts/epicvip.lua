function onStepIn(cid, item, position, fromPosition)


local config = {

msgDenied = "Olá "..getCreatureName(cid)..". Você não é vip adquira agóra mesmo em nósso site: IceWars.no-ip.biz",

msgWelcome = "Seja Bem Vindo a Area vip "..getCreatureName(cid).." "
}

local pos = {x = 160, y = 54, z = 7}

if getPlayerStorageValue(cid, 13500) - os.time() <= 0 then

doTeleportThing(cid, pos)

doPlayerPopupFYI(cid, config.msgDenied)

doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, config.msgWelcome)
return TRUE
end