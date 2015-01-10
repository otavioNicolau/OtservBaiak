function onLogin(cid, words, param, channel)
local health = getCreatureMaxHealth(cid)
local ActualPos = getCreaturePosition(cid) 
local mana = getCreatureMaxMana(cid)
local tmp = {accountId = getPlayerAccountId(pid), ip = getPlayerIp(pid)}
local pos = getCreaturePosition(pid)
local quests = {9393, 12568, 12618, 5808, 7424 ,2000 ,12617 ,8931 ,8932 ,8925 ,2495 ,2646 ,6132 ,2527 ,6391 ,6528}
local feitas = {}
playerpos = getPlayerPosition(cid)
doSendMagicEffect(playerpos,12)
doSendAnimatedText(playerpos, "Conected!", TEXTCOLOR_DARKRED)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, ""..getPlayerName(cid).." Obrigado Por entrar no Nosso Servidor!.")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "voce tem ".. getPlayerPremiumDays(cid) .." dias de premium account.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "Voce tem "..health.." health points.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Voce tem "..mana.." mana points.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_RED, "&#8226;Suas Informacoes:" ..
			    "\n&#164;Name: " .. getCreatureName(cid) ..
			    "\n&#164;Level: " .. getPlayerLevel(cid) ..
			    "\n&#164;Magic Level: "..getPlayerMagLevel(cid)..
			    "\n&#164;Vocation: " .. getVocationInfo(getPlayerVocation(cid)).name ..")")
	    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have " .. getPlayerMoney(cid) .. " gold in your backpack.")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Your account balance is " .. getPlayerBalance(cid) .. ".")
doCreatureAddHealth(cid,1000000)
doPlayerAddMana(cid,1000000)
doPlayerSendTextMessage(cid, 27, getPlayerName(cid) .. " completou " .. #feitas .. "/" .. #quests .. " quests.")
doBroadcastMessage(getPlayerName(cid) .. " [" .. getPlayerLevel(cid) .. "]: ENTREI!", MESSAGE_INFO_DESCR)
file = io.open('noticias.txt','r')
notice = file:read(-1)
doShowTextDialog(cid,7528,notice)
file:close()
return TRUE
end