--- Criado por Absolute ---
function onSay(cid, words, param)
file = io.open('info/critical.txt','r')
notice = file:read(-1)
doPlayerPopupFYI(cid,notice)
file:close()
end