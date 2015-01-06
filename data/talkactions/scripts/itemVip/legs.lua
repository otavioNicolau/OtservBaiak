function onSay(cid, words, param, channel)
	local toPos = getCreaturePosition(cid)
	local money = 1000000

	if getPlayerMoney(cid) >= money then

		if(words == "/legs") then

			-- STRONG LEGS
			
			if doPlayerRemoveItem(cid, 7464, 1) == TRUE then
				doPlayerAddItem(cid, 2504, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "STRONG LEGS!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			
			-- GREAT LEGS	

			elseif doPlayerRemoveItem(cid, 12641, 1) == TRUE then
				doPlayerAddItem(cid, 12625, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "GREAT LEGS!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate LEGS	

			elseif	doPlayerRemoveItem(cid, 12642, 1) == TRUE then
				doPlayerAddItem(cid, 12626	, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "ULTIMATE LEGS!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/shorts") then
		
		-- STRONG SHORTS
			if doPlayerRemoveItem(cid, 2504, 1) == TRUE then
				doPlayerAddItem(cid, 7464, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "STRONG SHORTS!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- GREAT SHORTS	

			elseif doPlayerRemoveItem(cid, 12625, 1) == TRUE then
				doPlayerAddItem(cid, 12641, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "GREAT SHORTS!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate SHORTS	

			elseif doPlayerRemoveItem(cid, 12626	, 1) == TRUE then
				doPlayerAddItem(cid, 12642, 1)
				doPlayerRemoveMoney(cid, money)	
				doCreatureSay(cid, "ULTIMATE SHORTS!", TALKTYPE_ORANGE_1)
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