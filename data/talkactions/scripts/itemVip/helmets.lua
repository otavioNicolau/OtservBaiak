function onSay(cid, words, param, channel)
	local toPos = getCreaturePosition(cid)
	local money = 1000000

	if getPlayerMoney(cid) >= money then

		if(words == "/helmet") then

			-- STRONG HELMET
			
			if doPlayerRemoveItem(cid, 7458, 1) == TRUE then
				doPlayerAddItem(cid, 2474, 1)
				doPlayerRemoveMoney(cid, money)			
				doCreatureSay(cid, "STRONG HELMET!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			
			-- GREAT HELMET	

			elseif doPlayerRemoveItem(cid, 12637, 1) == TRUE then
				doPlayerAddItem(cid, 12621 , 1)
				doPlayerRemoveMoney(cid, money)			
				doCreatureSay(cid, "GREAT HELMET!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate HELMET	

			elseif	doPlayerRemoveItem(cid, 12638, 1) == TRUE then
				doPlayerAddItem(cid,12622 , 1)
				doPlayerRemoveMoney(cid, money)			
				doCreatureSay(cid, "ULTIMATE HELMET!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/cap") then
		
		-- STRONG CAP
			if doPlayerRemoveItem(cid, 2474, 1) == TRUE then
				doPlayerAddItem(cid, 7458, 1)
				doPlayerRemoveMoney(cid, money)			
				doCreatureSay(cid, "STRONG CAP!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- GREAT CAP	

			elseif doPlayerRemoveItem(cid, 12621, 1) == TRUE then
				doPlayerAddItem(cid, 12637 , 1)	
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "GREAT CAP!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate CAP	

			elseif doPlayerRemoveItem(cid, 12622, 1) == TRUE then
				doPlayerAddItem(cid, 12638 , 1)
				doPlayerRemoveMoney(cid, money)			
				doCreatureSay(cid, "ULTIMATE CAP!", TALKTYPE_ORANGE_1)
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