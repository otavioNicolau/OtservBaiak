function onSay(cid, words, param, channel)
	file = io.open('info/itemVip.txt','r')
	notice = file:read(-1)
	doPlayerPopupFYI(cid,notice)
	file:close()
	return true
end
