function onUse(cid, item, fromPosition, itemEx, toPosition)

	local text_title = "ITEM VIP"

	if item.itemid == 7429  then
		if doPlayerRemoveItem(cid, 7429, 1) then 
			doPlayerAddItem(cid, 2447, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_PLATINUMBLUE)
		else
			return FALSE
		end
	elseif item.itemid == 2447 then
		if doPlayerRemoveItem(cid, 2447, 1) then
			doPlayerAddItem(cid, 7407, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 7407 then
		if doPlayerRemoveItem(cid, 7407, 1) then
			doPlayerAddItem(cid, 7424, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_PLATINUMBLUE)
		else
			return FALSE
		end
	elseif item.itemid == 7424 then
		if doPlayerRemoveItem(cid, 7424, 1) then
			doPlayerAddItem(cid, 5907, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_TEAL)
		else
			return FALSE
		end
	elseif item.itemid == 5907 then
		if doPlayerRemoveItem(cid, 5907, 1) then
			doPlayerAddItem(cid, 7429, 1)
			doSendAnimatedText(fromPosition, text_title, TEXTCOLOR_PLATINUMBLUE)
		else
			return FALSE
		end
	else
		return FALSE
	end
	return TRUE
end