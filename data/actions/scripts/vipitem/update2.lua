-- by otavio
function onUse(cid, item, frompos, item2, topos)

local gems = {2146, 2147}
local egems = {8299}
local altars = {{7508, 7509, 7510, 7511}, {7504, 7505, 7506, 7507}, {7516, 7517, 7518, 7519}, {7512, 7513, 7514, 7515}}

local weapons = {12647, 12645, 12631, 12629, 12633, 12635, 12643,12637,12621,12623,12639,12625,12641,12627}
local eweapons = {{12648}, {12646}, {12632}, {12630}, {12634},{12636}, {12644},{12638},{12622},{12624},{12640},{12626},{12642},{12628}} 


local type = item.type
if type == 0 then
type = 1
end

local mana = 300 * type
local soul = 2 * type


if isInArray(gems, item.itemid)== TRUE then
for aa=1, #gems do
if item.itemid == gems[aa] then
a=aa
end
end

-- encantar pedra
if isInArray(altars[a], item2.itemid) == TRUE then
if getPlayerMana(cid) >= mana and getPlayerSoul(cid) >= soul then
doTransformItem(item.uid,egems[a])
doPlayerAddMana(cid,-mana)
doPlayerAddSoul(cid,-soul)
doSendMagicEffect(frompos,39)
else
doPlayerSendCancel(cid,"You dont have mana or soul points.")
end
else
return 2
end

-- encantar armar
elseif isInArray(egems, item.itemid)== TRUE then
for bb=1, #egems do
if item.itemid == egems[bb] then
b=bb
end
end


if isInArray(weapons, item2.itemid)== TRUE then
for cc=1, #weapons do
if item2.itemid == weapons[cc] then
c=cc
end
end
	if getPlayerLevel(cid) >= 750 then
		doSendMagicEffect(getCreaturePosition(cid),66)
		doSendMagicEffect(getCreaturePosition(cid),30) 
		doTransformItem(item2.uid,eweapons[c][b],1000)
		doRemoveItem(item.uid,1)
	else
		doPlayerSendCancel(cid,"VOCE NAO TEM LEVEL SUFICIENTE! LEVEL REQUERIDO: 750.")
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
	end
else
	doPlayerSendCancel(cid,"NAO FOI POSSIVEL APRIMORAR ESTE ITEM")
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
end
else
return 0
end
return 1
end