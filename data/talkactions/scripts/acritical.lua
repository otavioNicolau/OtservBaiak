--- Criado por Absolute ---
function onSay(cid, words, param)
file = io.open('critical.txt','r')
notice = file:read(-1)
doShowTextDialog(cid,7528,notice)
file:close()
end