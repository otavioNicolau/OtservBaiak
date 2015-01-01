function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 2000000) == TRUE then
local bp = doPlayerAddItem(cid, 5468, 1)
doSendMagicEffect(getCreaturePosition(cid),13)
doCreatureSay(cid, "Você comprou uma Stamina Potion", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "Voce nao tem dinheiro suficiente", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end