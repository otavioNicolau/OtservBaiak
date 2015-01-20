local config = {
	loginMessage = getConfigValue('loginMessage')
}

function onLogin(cid)

	local loss = getConfigValue('deathLostPercent')
	if(loss ~= nil) then
		doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
        doPlayerSetLossPercent(cid, PLAYERLOSS_ITEMS, 10)
	end

	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Sua ultima visita foi em " .. os.date("%d/%m/%Y - %X", lastLogin) .. "."
		else 
	local contaid = getPlayerAccountId(cid)
		    local res = db.getResult('SELECT `verificado` FROM `accounts` WHERE `id` = "'..contaid..'";')
		    if vip.hasVip(cid) == FALSE and res:getDataString('verificado') == '0' then
			doAddVipDays(cid , 4)
			db.executeQuery('UPDATE accounts SET verificado="1" WHERE id="'..contaid..'"')
			end		  
			str = str .. " Por favor escolha seu outfit."
			doPlayerSendOutfitWindow(cid)
                      ide = getPlayerGUID(cid)
                       nome = db.getResult("SELECT name FROM players WHERE id='"..ide.."'"):getDataString("name")
                     db.executeQuery('UPDATE players SET old_name="'..nome..'" WHERE id="'..ide..'"')
		end


		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end

	registerCreatureEvent(cid, "Mail")
	registerCreatureEvent(cid, "GuildMotd")
	
registerCreatureEvent(cid, "killer")
registerCreatureEvent(cid, "TiraBattle")
registerCreatureEvent(cid, "tkexp")
registerCreatureEvent(cid, "castleexp")
registerCreatureEvent(cid, "CombatDodge")
registerCreatureEvent(cid, "Idle")
registerCreatureEvent(cid, "DeathBroadcast")
registerCreatureEvent(cid, "conected")
registerCreatureEvent(cid, "Effect")
registerCreatureEvent(cid, "attackguild")	
registerCreatureEvent(cid, "advance")
registerCreatureEvent(cid, "FimVip")

registerCreatureEvent(cid, "forever amulet")
registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "ReportBug")

registerCreatureEvent(cid, VipReceive)
registerCreatureEvent(cid, "PlayerKill")
    if (InitArenaScript ~= 0) then
    InitArenaScript = 1
    -- make arena rooms free
        for i = 42300, 42309 do
            setGlobalStorageValue(i, 0)
            setGlobalStorageValue(i+100, 0)
        end
    end
    
registerCreatureEvent(cid, "critical")
        if getPlayerStorageValue(cid, 48903) == -1 then
        setPlayerStorageValue(cid, 48903, 0) 
         end 

    -- if he did not make full arena 1 he must start from zero
    if getPlayerStorageValue(cid, 42309) < 1 then
        for i = 42300, 42309 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    -- if he did not make full arena 2 he must start from zero
    if getPlayerStorageValue(cid, 42319) < 1 then
        for i = 42310, 42319 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    -- if he did not make full arena 3 he must start from zero
    if getPlayerStorageValue(cid, 42329) < 1 then
        for i = 42320, 42329 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    if getPlayerStorageValue(cid, 42355) == -1 then
        setPlayerStorageValue(cid, 42355, 0) -- did not arena level
    end
    setPlayerStorageValue(cid, 42350, 0) -- time to kick 0
    setPlayerStorageValue(cid, 42352, 0) -- is not in arena  
return true
end
