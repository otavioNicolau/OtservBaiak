function onSay(cid, words, param, channel)
	local toPos = getCreaturePosition(cid)
	local money = 1000000

	if getPlayerMoney(cid) >= money then

		if(words == "/shield") then

			-- STRONG SHIELD
			if doPlayerRemoveItem(cid, 7460, 1) == TRUE then
				doPlayerAddItem(cid, 2527, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "STRONG SHIELD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			
			-- GREAT SHIELD	

			elseif doPlayerRemoveItem(cid, 12643, 1) == TRUE then
				doPlayerAddItem(cid, 12635, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "GREAT SHIELD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate SHIELD	

			elseif	doPlayerRemoveItem(cid, 12644, 1) == TRUE then
				doPlayerAddItem(cid, 12636, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "ULTIMATE SHIELD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/book") then
		
		-- STRONG book
			if doPlayerRemoveItem(cid, 2527, 1) == TRUE then
				doPlayerAddItem(cid, 7460, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "STRONG BOOK!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- GREAT book	

			elseif doPlayerRemoveItem(cid, 12635, 1) == TRUE then
				doPlayerAddItem(cid, 12643, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "GREAT BOOK!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate book	

			elseif doPlayerRemoveItem(cid, 12636, 1) == TRUE then
				doPlayerAddItem(cid, 12644, 1)	
				doPlayerRemoveMoney(cid, money)
				doCreatureSay(cid, "ULTIMATE BOOK!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	
		else	
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
		end		
			return true
	else
		doCreatureSay(cid, "VOCE PRECISA PAGAR 1KK", TALKTYPE_ORANGE_1)
		doSendMagicEffect(toPos, CONST_ME_POFF)
		return TRUE
	end	
end