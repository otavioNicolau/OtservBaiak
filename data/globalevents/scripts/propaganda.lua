function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens = {"O SITE S� OTSERV FAZ 1 ANO! Confira Scripts, Mapas, Otservers, Tutoriais em WWW.SOTSERV.BLOGSPOT.COM !", ""} -- Defina as mensagens de propaganda
  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end