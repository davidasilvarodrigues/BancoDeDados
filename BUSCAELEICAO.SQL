--Todos os Eleitores de Santa Catarina em ordem crescente
SELECT eleitor.nome FROM zona as zona,secao as secao, eleitor as eleitor WHERE eleitor.secao_fk=secao.secao_id AND secao.zona_fk=zona.zona_id AND zona.cidade='SC' ORDER BY eleitor.nome
--Quantidade de votos do Silvio Santos
SELECT COUNT(candidato_fk) FROM voto as voto, candidato as cand WHERE voto.candidato_fk=cand.candidato_id AND cand.nome='Silvio Santos'
--Quem ganhou a eleicao de presidente e sua Quantidade de votos
SELECT cand.nome , COUNT(candidato_fk) FROM voto as voto, candidato as cand, cargo as cargo WHERE voto.candidato_fk=cand.candidato_id AND cand.cargo_fk=cargo.cargo_id AND cargo.nome='presidente' GROUP BY cand.nome LIMIT 1
