function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid == 5095 then 
local exhaustionStorage = 2555 -- Storage value for exhastion
		doTransformItem(itemEx.uid, 5095)
doSendMagicEffect(fromPosition, 31,39)
		doPlayerAddItem(cid,2676,1)
local time = 1 -- Time of exhaustion (in seconds)

		return TRUE
	end
	return destroyItem(cid, itemEx, toPosition)
end