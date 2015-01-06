--by Richi~ --
function onUse(cid, item, frompos, item2, topos)

local gems = {21469, 21478}
local egems = {2146, 2147}
local altars = {{7508, 7509, 7510, 7511}, {7504, 7505, 7506, 7507}, {7516, 7517, 7518, 7519}, {7512, 7513, 7514, 7515}}

local weapons = {12648, 12646, 12632, 12630, 12634}
local eweapons = {{5907, 12647}, {7424, 12645}, {7407, 12631}, {2447, 12629}, {7429, 12633}} 


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
	doCreatureSay(cid, ""..b.."", TALKTYPE_ORANGE_1)

c=cc
end
end
doTransformItem(item2.uid,eweapons[c][b],1000)
doSendMagicEffect(frompos,39)
doRemoveItem(item.uid,3)
else
doPlayerSendCancel(cid,"You can't enchanted this....")
end
else
return 0
end
return 1
end