function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid == 4006 then 
local exhaustionStorage = 2555 -- Storage value for exhastion
		doTransformItem(itemEx.uid, 4006)
doSendMagicEffect(fromPosition, 31,39)
		doPlayerAddItem(cid,2675,1)
local time = 1 -- Time of exhaustion (in seconds)

		return TRUE
	end
	return destroyItem(cid, itemEx, toPosition)
end