--- Criado por Absolute ---
function onSay(cid, words, param)
file = io.open('info/dodge.txt','r')
notice = file:read(-1)
doPlayerPopupFYI(cid,notice)
file:close()
end