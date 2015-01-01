function onUse(cid, item, fromPosition, itemEx, toPosition)

	local text_title = "ITEM VIP"

	if item.itemid == 7460  then
		if doPlayerRemoveItem(cid, 7460, 1) then 
			doPlayerAddItem(cid, 2527, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_PLATINUMBLUE)
		else
			return FALSE
		end
	elseif item.itemid == 2527 then
		if doPlayerRemoveItem(cid, 2527, 1) then
			doPlayerAddItem(cid, 7460, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 12635 then
		if doPlayerRemoveItem(cid, 12635, 1) then
			doPlayerAddItem(cid, 12643, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 12643 then
		if doPlayerRemoveItem(cid, 12643, 1) then
			doPlayerAddItem(cid, 12635, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 12644 then
		if doPlayerRemoveItem(cid, 12644, 1) then
			doPlayerAddItem(cid, 12636, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 12636 then
		if doPlayerRemoveItem(cid, 12636, 1) then
			doPlayerAddItem(cid, 12644, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	else
		return FALSE
	end
	return TRUE
end