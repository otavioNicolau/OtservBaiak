function onThink(interval, lastExecution)
  -- Configurações
    local cor = 180 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Voce está jogando IceWars 
alguns comandos:
Dodge System: !dodge
Critical System :!critical
Remover Skull: !removeskull
Recuperar Stamina: !stamina
Expulsar players inativos (5 dias offline) de suas houses: !eject
Para mais comandos digite /commands

Bom Jogo]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end