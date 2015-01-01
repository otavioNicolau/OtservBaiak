function onStepIn(cid, item, pos)



-- teleports config
teleport1 ={x=155, y=45, z=7}



if isPlayer(cid) then

if item.actionid == 13539 then

vip = getPlayerStorageValue(cid,13540)
if vip == -1 then
doPlayerSendCancel(cid,"Você não é vip 2 fale !buyvip2")


doTeleportThing(cid,teleport1)


else

end

end

end

end
