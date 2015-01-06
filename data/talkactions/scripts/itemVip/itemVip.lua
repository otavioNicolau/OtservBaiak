local config = {
	serverName = getConfigInfo('serverName'),
	coinName = "VIP coin"

}

function onSay(cid, words, param, channel)
	-- doPlayerPopupFYI(cid, "SISTEMA DE ITENS VIP:\n\nO " .. config.serverName .. ",\n  Tem um sistema de itens vip totalmente reformulado, Nunca jamais visto em outros servidores de otserv.\n- COMO CONSIGO MEU ITEM VIP?\n E simples! Basta voce acessar o nosso site: " .. config.site .. " e faca o seu Orcamento no SHOP,\n Depois clique no botao Comprar "..config.coinName .." e faca a sua recarga de "..config.coinName .." na quantidade desejada,\n Para que voce possa escolher seus itens vip no SHOP.\n- COMO O SISTEMA FUNCIONA?\n\n Existe 3 categorias de ITENS VIP: STRONG, GREAT e ULTIMATE, Todas elas podem ser aprimoradas exeto a ULTIMATE.\n- OQUE E MAGIC VIP STONE\n E Uma Pedra misteriosa que ao falar algumas palavras magica, Ela transformara seu ITEM VIP em outro mais forte. \n Exp: !update slingshot, staff, sword, axe, club, armor, cape, legs, shorts, helmet e cap.\n Comando : !update (tipo do item)\n- AMBAS VOCACOES\n	Como o nosso foco é sempre voces! fizemos questao de implementar um sistema nunca jamais visto!\n")

	doPlayerPopupFYI(cid, "SISTEMA DE ITENS VIP:\n\nO  "..config.serverName..",\n\n Tem um sistema de itens vip totalmente reformulado, nunca visto em outros servidores.\n\n-COMO FUNCIONA?\n\n Existem 3 categorias de ITENS VIP: STRONG, GREAT e ULTIMATE. Todas elas podem ser aprimoradas,\n exeto a ULTIMATE, pois ela e a categoria mais poderosa do jogo.\n\n- O QUE E MAGIC STONE?\n Sao pedras misteriosas que ao usa-las nos itens das categorias Strong e Great transforma seu item em outro mais podesoro. \n\n Exp: /update slingshot, staff, sword e etc..\n Comando : /update (tipo do item)\n\n- AMBAS VOCACOES\n Como o nosso foco e sempre voce! fizemos questao de implementar um sistema jamais visto!\n TODOS OS ITENS VIP PODEM SE TROCADO POR OUTROS COM APENAS UMA PALAVRA MAGICA!\n *ATENCAO* So funciona com itens do mesmo tipo: armas por armas, legs por legs e etc..\n\n - ARMAS: /sword,/axe,/club,/staff,/slingshot.\n - ARMORS: /armor,/cape.\n - LEGS: /legs,/shorts.\n - SHIELDS: /shield,/book.\n - Exp: Jogador:/sword \n\n Att ADM PARANORMAL")
	return true
end
