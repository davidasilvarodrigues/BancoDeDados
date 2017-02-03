--Nome da flor que Joao mais pediu
SELECT flor.nome FROM flor as flor,cliente as cliente, pedidoflor as pd WHERE flor.flor_id=pd.flor_fk AND pd.cliente_fk=cliente.cliente_id AND cliente.nome='Joao'  ORDER BY pd.quantidade LIMIT 1
--3 Floriculturas que tem a flor petunia
SELECT floricultura.nome FROM flor as flor,floricultura as floricultura, florfloricultura as ff WHERE flor.flor_id=ff.flor_fk AND ff.floricultura_fk=floricultura.floricultura_id AND flor.nome='petunia'  ORDER BY ff.nome LIMIT 3
--A regiao que tem mais rosas
SELECT regiao.nome FROM flor as flor,regiao as regiao,floricultura as floricultura, florfloricultura as ff WHERE regiao.regiao_id=floricultura.regiao_fK AND floricultura.floricultura_id= ff.floricultura_fk AND ff.flor_fk= AND flor.flor_id AND flor.nome='rosa'  ORDER BY regiao.nome LIMIT 1
