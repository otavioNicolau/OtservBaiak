local messages = {
"MSG QUE SERA ENVIADA.",
"MSG QUE SERA ENVIADA.",
"MSG QUE SERA ENVIADA."
}

function onThink(interval, lastExecution)
for _, pid in ipairs(getPlayersOnline()) do
msg = math.random(1, #messages)
doPlayerSendTextMessage(pid, 20, " [Auto-Message]: "..msg.." .")
end
return true
end