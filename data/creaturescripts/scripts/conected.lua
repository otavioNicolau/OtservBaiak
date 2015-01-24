function onLogin(cid, words, param, channel)
local health = getCreatureMaxHealth(cid)
local mana = getCreatureMaxMana(cid)
local quests = {9393, 12568, 12618, 5808, 7424 ,2000 ,12617 ,8931 ,8932 ,8925 ,2495 ,2646 ,6132 ,2527 ,6391 ,6528}
local feitas = {}
playerpos = getPlayerPosition(cid)
doSendMagicEffect(playerpos,12)
doSendAnimatedText(playerpos, "Conected!", TEXTCOLOR_DARKRED)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, ""..getPlayerName(cid).." Obrigado Por entrar no Nosso Servidor!.")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "voce tem ".. getPlayerPremiumDays(cid) .." dias de premium account.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_ORANGE, "Voce tem "..health.." health points.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_BLUE, "Voce tem "..mana.." mana points.")
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_RED, "Suas Informacoes:" ..
			    "\nName: " .. getCreatureName(cid) ..
			    "\nLevel: " .. getPlayerLevel(cid) ..
			    "\nMagic Level: "..getPlayerMagLevel(cid)..
			    "\nVocation: " .. getVocationInfo(getPlayerVocation(cid)).name ..")")
	    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "voce tem " .. getPlayerMoney(cid) .. " gold(s) na sua backpack.")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Seu balance e de " .. getPlayerBalance(cid) .. ".")
doCreatureAddHealth(cid,10000)
doPlayerAddMana(cid,10000)
doPlayerSendTextMessage(cid, 27, getPlayerName(cid) .. " completou " .. #feitas .. "/" .. #quests .. " quests.")
file = io.open('info/noticias.txt','r')
notice = file:read(-1)
doPlayerPopupFYI(cid,notice)
file:close()
return TRUE
end