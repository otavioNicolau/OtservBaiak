function onSay(cid, words, param, channel)
	local toPos = getCreaturePosition(cid)



	if(words == "/armor") then

		-- STRONG ARMOR
		
		if doPlayerRemoveItem(cid, 7463, 1) == TRUE then
			doPlayerAddItem(cid, 2503, 1)	
			doCreatureSay(cid, "STRONG ARMOR!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
			return true
		
		-- GREAT ARMOR	

		elseif doPlayerRemoveItem(cid, 12639, 1) == TRUE then
			doPlayerAddItem(cid, 12623, 1)	
			doCreatureSay(cid, "GREAT ARMOR!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
			return true

		-- Ultimate ARMOR	

		elseif	doPlayerRemoveItem(cid, 12640, 1) == TRUE then
			doPlayerAddItem(cid, 12624, 1)	
			doCreatureSay(cid, "ULTIMATE ARMOR!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
			return true

		else
			doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_POFF)
			return TRUE
		end	

	elseif(words == "/cape") then
	
	-- STRONG CAPE
		if doPlayerRemoveItem(cid, 2503, 1) == TRUE then
			doPlayerAddItem(cid, 7463, 1)	
			doCreatureSay(cid, "STRONG CAPE!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
			return true

		-- GREAT CAPE	

		elseif doPlayerRemoveItem(cid, 12623, 1) == TRUE then
			doPlayerAddItem(cid, 12639, 1)	
			doCreatureSay(cid, "GREAT CAPE!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
			return true

		-- Ultimate CAPE	

		elseif doPlayerRemoveItem(cid, 12624, 1) == TRUE then
			doPlayerAddItem(cid, 12640, 1)	
			doCreatureSay(cid, "ULTIMATE CAPE!", TALKTYPE_ORANGE_1)
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
end