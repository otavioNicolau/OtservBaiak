local config = {
   effectonuse = 14, -- efeito que sai
   levelscrit = 100,  --- leveis que ter�o
   storagecrit = 48903 -- storage que ser� verificado
   }
   
function onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid, config.storagecrit) < config.levelscrit then
   doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,config.effectonuse)
doPlayerSendTextMessage(cid,22,"You've Leveled your Critical Skill to ["..(getPlayerStorageValue(cid, config.storagecrit)+1).."/100].")
setPlayerStorageValue(cid, config.storagecrit, getPlayerStorageValue(cid, config.storagecrit)+1)
elseif getPlayerStorageValue(cid, config.storagecrit) >= config.levelscrit then
doPlayerSendTextMessage(cid,22,"Voce J� tem o M�ximo De Critical Skill Permitido.\nCongratulations!!!!")
    return 0
    end
return 1
end