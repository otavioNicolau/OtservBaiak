function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition)

if isPlayer(cid) and getGlobalStorageValue(configCW.stats) == 1 then
	doTeleportThing(cid, configCW.arenapos[math.random(1, #configCW.arenapos)])
	doSendMagicEffect(getPlayerPosition(cid), 28)
	if not(configCW:isPlayerInEvent(cid)) then
		setPlayerStorageValue(cid, configCW.stats, getGlobalStorageValue(configCW.ostime) + configCW.evttime*60 + configCW.finaltime)
		setPlayerStorageValue(cid, configCW.kill, -1)
		setPlayerStorageValue(cid, configCW.death, -1)
	end
else
	doTeleportThing(cid, fromPosition)
end

return true
end