function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[IceWars Information:
Descubra os segredos de Tenebra City e Venom City,
Hunts, Quests e mt mais.
Para saber mais sobre donates ou confirmar alguma doação
entre em nosso site IceWars.no-ip.biz
Bom Jogo]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end