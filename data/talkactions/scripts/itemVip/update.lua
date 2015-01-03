function onSay(cid, words, param)
local toPos = getCreaturePosition(cid)
local moeda = 2157
local param = string.lower(param)
local n1 = 500
local n2 = 750

if (not isPremium(cid)) then
doPlayerSendCancel(cid, "Você nao tem nenhum VIP COIN.")
return TRUE
end

	if(param == "sword") then
		
		-- STRONG SWORD
		if getPlayerItemCount(cid, moeda) >= 1 and  getPlayerItemCount(cid, 7407) >= 1 then
			
			if getPlayerLevel(cid) >= n1 then
				doCreatureSay(cid, "UPDATE STRONG SWORD PARA GREAT SWORD!", TALKTYPE_ORANGE_1)
				--doPlayerAddItem(cid, 7407, 1)	
				doSendMagicEffect(toPos, CONST_ME_MAGIC_RED)
				return true
			else
				doCreatureSay(cid, "LEVEL MINIMO!".. N1 .. "", TALKTYPE_ORANGE_1)
				doSendMagicEffect(toPos, CONST_ME_POFF)
				return true
			end
		end
	elseif(param == "axe") then	
		doPlayerSendCancel(cid, "axe")
	end	
end