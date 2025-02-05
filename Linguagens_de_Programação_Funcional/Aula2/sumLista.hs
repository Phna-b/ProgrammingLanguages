-- Exemplo de entrada mysum(2 : [3])
mysum [] = 0
mysum (x:xs) = x + mysum xs


-- Retornando o penultimo 
mysumP [a,b] = a
mysumP (x:xs) = mysumP xs