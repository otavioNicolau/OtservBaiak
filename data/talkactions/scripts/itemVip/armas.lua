function onSay(cid, words, param, channel)
	local toPos = getCreaturePosition(cid)
	local money = 1000000

	if getPlayerMoney(cid) >= money then

		if(words == "/sword") then

			-- STRONG SWORD
			if doPlayerRemoveItem(cid, 2447, 1) == TRUE then
				doPlayerAddItem(cid, 7407, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 7429, 1) == TRUE then
				doPlayerAddItem(cid, 7407, 1)	
				doCreatureSay(cid, "STRONG SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 5907, 1) == TRUE then
				doPlayerAddItem(cid, 7407, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "STRONG SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 7424, 1) == TRUE then
				doPlayerAddItem(cid, 7407, 1)	
				doCreatureSay(cid, "STRONG SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			-- GREAT SWORD	

			elseif doPlayerRemoveItem(cid, 12633, 1) == TRUE then
				doPlayerAddItem(cid, 12631, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12647, 1) == TRUE then
				doPlayerAddItem(cid, 12631, 1)	
				doCreatureSay(cid, "GREAT SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12629, 1) == TRUE then
				doPlayerAddItem(cid, 12631, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "GREAT SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12645, 1) == TRUE then
				doPlayerAddItem(cid, 12631, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate sword	

			elseif doPlayerRemoveItem(cid, 12648, 1) == TRUE then
				doPlayerAddItem(cid, 12632, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12646, 1) == TRUE then
				doPlayerAddItem(cid, 12632, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12634, 1) == TRUE then
				doPlayerAddItem(cid, 12632, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "ULTIMATE SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12630, 1) == TRUE then
				doPlayerAddItem(cid, 12632, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE SWORD!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/axe") then
		
		-- STRONG axe
			if doPlayerRemoveItem(cid, 7407, 1) == TRUE then
				doPlayerAddItem(cid, 2447, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 7429, 1) == TRUE then
				doPlayerAddItem(cid, 2447, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 7424, 1) == TRUE then
				doPlayerAddItem(cid, 2447, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "STRONG AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 5907, 1) == TRUE then
				doPlayerAddItem(cid, 2447, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			-- GREAT axe	

			elseif doPlayerRemoveItem(cid, 12631, 1) == TRUE then
				doPlayerAddItem(cid, 12629, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12647, 1) == TRUE then
				doPlayerAddItem(cid, 12629, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12633, 1) == TRUE then
				doPlayerAddItem(cid, 12629, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "GREAT AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12645, 1) == TRUE then
				doPlayerAddItem(cid, 12629, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate axe	

			elseif doPlayerRemoveItem(cid, 12632, 1) == TRUE then
				doPlayerAddItem(cid, 12630, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12646, 1) == TRUE then
				doPlayerAddItem(cid, 12630, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12634, 1) == TRUE then
				doPlayerAddItem(cid, 12630, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "ULTIMATE AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12648, 1) == TRUE then
				doPlayerAddItem(cid, 12630, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE AXE!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/club") then
		
		-- STRONG axe
			if doPlayerRemoveItem(cid, 7407, 1) == TRUE then
				doPlayerAddItem(cid, 7429, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 2447, 1) == TRUE then
				doPlayerAddItem(cid, 7429, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 7424, 1) == TRUE then
				doPlayerAddItem(cid, 7429, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "STRONG CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 5907, 1) == TRUE then
				doPlayerAddItem(cid, 7429, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			-- GREAT axe	

			elseif doPlayerRemoveItem(cid, 12631, 1) == TRUE then
				doPlayerAddItem(cid, 12633, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12647, 1) == TRUE then
				doPlayerAddItem(cid, 12633, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12629, 1) == TRUE then
				doPlayerAddItem(cid, 12633, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "GREAT CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12645, 1) == TRUE then
				doPlayerAddItem(cid, 12633, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- Ultimate axe	

			elseif doPlayerRemoveItem(cid, 12632, 1) == TRUE then
				doPlayerAddItem(cid, 12634, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12646, 1) == TRUE then
				doPlayerAddItem(cid, 12634, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12630, 1) == TRUE then
				doPlayerAddItem(cid, 12634, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "ULTIMATE CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12648, 1) == TRUE then
				doPlayerAddItem(cid, 12634, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE CLUB!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/staff") then
		
		-- STRONG staff
			if doPlayerRemoveItem(cid, 5907, 1) == TRUE then
				doPlayerAddItem(cid, 7424, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 7407, 1) == TRUE then
				doPlayerAddItem(cid, 7424, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 7429, 1) == TRUE then
				doPlayerAddItem(cid, 7424, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "GREAT STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 2447, 1) == TRUE then
				doPlayerAddItem(cid, 7424, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- GREAT staff	

			elseif doPlayerRemoveItem(cid, 12647, 1) == TRUE then
				doPlayerAddItem(cid, 12645, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12631, 1) == TRUE then
				doPlayerAddItem(cid, 12645, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12633, 1) == TRUE then
				doPlayerAddItem(cid, 12645, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "STRONG STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12629, 1) == TRUE then
				doPlayerAddItem(cid, 12645, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "STRONG STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true



			-- Ultimate staff		

			elseif doPlayerRemoveItem(cid, 12648, 1) == TRUE then
				doPlayerAddItem(cid, 12646, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12632, 1) == TRUE then
				doPlayerAddItem(cid, 12646, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12634, 1) == TRUE then
				doPlayerAddItem(cid, 12646, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "ULTIMATE STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12630, 1) == TRUE then
				doPlayerAddItem(cid, 12646, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "ULTIMATE STAFF!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			else
				doCreatureSay(cid, "SEM ITEM VIP", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return TRUE
			end	

		elseif(words == "/slingshot") then
		
		-- STRONG staff
			if doPlayerRemoveItem(cid, 7424, 1) == TRUE then
				doPlayerAddItem(cid, 5907, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 7407, 1) == TRUE then
				doPlayerAddItem(cid, 5907, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 7429, 1) == TRUE then
				doPlayerAddItem(cid, 5907, 1)doPlayerRemoveMoney(cid, money)	
					
				doCreatureSay(cid, "GREAT SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 2447, 1) == TRUE then
				doPlayerAddItem(cid, 5907, 1)doPlayerRemoveMoney(cid, money)	
	
				doCreatureSay(cid, "GREAT SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true

			-- GREAT staff	

			elseif doPlayerRemoveItem(cid, 12645, 1) == TRUE then
				doPlayerAddItem(cid, 12647, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "STRONG SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12631, 1) == TRUE then
				doPlayerAddItem(cid, 12647, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "STRONG SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12633, 1) == TRUE then
				doPlayerAddItem(cid, 12647, 1)
				doPlayerRemoveMoney(cid, money)						
				doCreatureSay(cid, "STRONG SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12629, 1) == TRUE then
				doPlayerAddItem(cid, 12647, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "STRONG SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true



			-- Ultimate slingshot		

			elseif doPlayerRemoveItem(cid, 12646, 1) == TRUE then
				doPlayerAddItem(cid, 12648, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "ULTIMATE SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif doPlayerRemoveItem(cid, 12632, 1) == TRUE then
				doPlayerAddItem(cid, 12648, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "ULTIMATE SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12634, 1) == TRUE then
				doPlayerAddItem(cid, 12648, 1)
				doPlayerRemoveMoney(cid, money)						
				doCreatureSay(cid, "ULTIMATE SLINGSHOT!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			elseif	doPlayerRemoveItem(cid, 12630, 1) == TRUE then
				doPlayerAddItem(cid, 12648, 1)
				doPlayerRemoveMoney(cid, money)		
				doCreatureSay(cid, "ULTIMATE SLINGSHOT!", TALKTYPE_ORANGE_1)
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