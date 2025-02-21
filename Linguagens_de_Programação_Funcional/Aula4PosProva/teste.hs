--aplicar:: (Integer->Integer) ->(Integer) ->[Integer]
aplicar _ [] = []
aplicar f (n:ns) = (f n) : aplicar f ns


--Recebe listas e retorna a cabeça, Recebe uma lista de lista. Função "map head" retorna as cabeças da lista
--Aplica map head em cada uma das listas usadas como parametro  e retorna uma lista com as cabeças
heads::[[a]] -> [a]
heads = map head


--filter::(a -> Bool) -> [a] -> [a]
-- é uma função do haskel que retorna o valor desejado, exemplo de uso filter (>3) [4,5,3] o retorno vai ser [4,5]


