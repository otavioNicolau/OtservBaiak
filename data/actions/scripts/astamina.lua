local config = {
	tempo = 60, -- Tempo em minutos
	effect = 5,
	remove_on_use = "yes"
}


function onUse(cid, item, frompos, item2, topos)
	doPlayerAddStamina(cid, config.tempo)
	doSendMagicEffect(getThingPos(cid), config.effect)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua stamina Recuperada.")

	if config.remove_on_use == "yes" then
		doRemoveItem(item.uid, 1)
	end
return true
end