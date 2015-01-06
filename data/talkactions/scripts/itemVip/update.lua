function onSay(cid, words, param)
local toPos = getCreaturePosition(cid)
local moeda = 2157
local param = string.lower(param)
local nomeMoeda = "VIP COINS"
local classe = "SWORD"
local quty1 = 50
local quty2 = 100

local level = 1
local level2 = 1

local idItem = 7407
local itemNome = "STRONG SWORD"
local idItem2 = 12631
local itemNome2 = "GREAT SWORD"
local idItem3 = 12632
local itemNome3 = "ULTIMATE SWORD"

	if(param == "sword") then
		
		-- STRONG SWORD
		if getPlayerItemCount(cid, idItem) >= 1 then

			if getPlayerItemCount(cid, moeda) >= quty1 then  
			
				if getPlayerLevel(cid) >= level then


					doPlayerRemoveItem(cid, idItem, 1)
					doPlayerRemoveItem(cid, moeda, quty1)		
					doPlayerAddItem(cid, idItem2, 1)	

					doCreatureSay(cid, "PARABÉNS VOCê APRIMOROU UM(A) "..itemNome.." PARA "..itemNome2.."!", TALKTYPE_ORANGE_1)
					--doPlayerAddItem(cid, 7407, 1)	
					doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
					return true
				else
					doCreatureSay(cid, "APENAS OS LEVEIS "..level.. " PODEM APRIMORAR ESTE ITEM.", TALKTYPE_ORANGE_1)
					doSendMagicEffect(toPos, CONST_ME_POFF)
					return true
				end
			else
				doCreatureSay(cid, "VOCÊ PRECISA DE "..quty1.." "..nomeMoeda.." PARA APRIMORAR ESTE ITEM!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return true	
			end

		elseif getPlayerItemCount(cid, idItem2) >= 1 then

			if getPlayerItemCount(cid, moeda) >= quty2 then  
			
				if getPlayerLevel(cid) >= level2 then


					doPlayerRemoveItem(cid, idItem2, 1)
					doPlayerRemoveItem(cid, moeda, quty2)		
					doPlayerAddItem(cid, idItem3, 1)	

					doCreatureSay(cid, "PARABÉNS VOCê APRIMOROU UM(A) "..itemNome2.." PARA "..itemNome3.."!", TALKTYPE_ORANGE_1)
					--doPlayerAddItem(cid, 7407, 1)	
					doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
					return true
				else
					doCreatureSay(cid, "APENAS OS LEVEIS "..level2.. " PODEM APRIMORAR ESTE ITEM.", TALKTYPE_ORANGE_1)
					doSendMagicEffect(toPos, CONST_ME_POFF)
					return true
				end
			else
				doCreatureSay(cid, "VOCÊ PRECISA DE "..quty2.." "..nomeMoeda.." PARA APRIMORAR ESTE ITEM!", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return true	
			end
		-- final	
		else
			doCreatureSay(cid, "VOCÊ NÃO TEM UMA(A) "..classe.." VIP NECESSÁRIO(A) PARA APRIMORA-LO(A)!", TALKTYPE_ORANGE_1)
			doSendMagicEffect(toPos, CONST_ME_POFF)
			return true	
		end	
	end	
end