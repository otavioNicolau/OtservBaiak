function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 180 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Voce est� jogando IceWars 
alguns comandos:
Dodge System: !dodge
Critical System :!critical
Remover Skull: !removeskull
Recuperar Stamina: !stamina
Expulsar players inativos (5 dias offline) de suas houses: !eject
Para mais comandos digite /commands

Bom Jogo]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end