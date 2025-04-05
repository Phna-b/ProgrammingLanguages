-- Questão 01
{- 
 dobro :: Num a => a -> a
 primeiro :: (a, b) -> a
 maiorQue10 :: (Ord a, Num a) => a -> Bool
 somaLista :: (Foldable t, Num a) => t a -> a
-}
 
-- Questão 02 
ehPar :: Int -> Bool
ehPar x = x `mod` 2 == 0 -- Verifica se a sobra da divisão por 2 é 0
 
-- Questão 03
quad :: Num a => a -> a
quad x = x ^ 2

-- Questão 04
fatorial :: Integer -> Integer
fatorial 0 = 0
fatorial 1 = 1
fatorial x = x * fatorial (x-1) -- Retorna x vezes x-1 até chegar ao valor 1

-- Questão 05

somaN :: Integer -> Integer
somaN 0 = 0
somaN n = n + somaN (n-1) -- Retorna n + n-1 até chegar a 0

-- Questão 06

fibonacci :: Integer -> Integer
fibonacci 1 = 1
fibonacci 2 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)  -- Aplicando a formula, utilizando os fatos como base.

-- Questão 07
contaElementos :: [a] -> Int
contaElementos [] = 0
contaElementos (x:xs) = 1 + contaElementos xs -- Retornando 1 a cada elemento da lista até a mesma ficar vazia.

-- Questão 08
reverter :: [a] -> [a]
reverter = foldl (\x y -> y : x) [] -- Usando uma função lambda que percorre a lista e inverte os valores

-- Questão 09
data DiaSemana = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo -- Utilizando o tipo data para criar um novo tipo (DiaSemana

-- Questão 10
ehFimDeSemana :: DiaSemana -> Bool
ehFimDeSemana Sabado = True
ehFimDeSemana Domingo = True
ehFimDeSemana _ = False -- Criando fatos para caso seja domingo ou sabado retorne TRUE

-- Questão 11 
produtoLista :: [Integer] -> Integer
produtoLista [] = 1
produtoLista (x:xs) = x * produtoLista xs -- Percorre a lista através de recursão 

-- Questão 12
elementoN :: [a] -> Int -> a
elementoN [] _ = error "Valor não existe na lista"
elementoN (x:xs) 0 = x
elementoN (x:xs) n  = elementoN  xs (n-1) -- Usa recursão para percorrer a lista e controlar a posição atual

-- Questão 13
somaImpares :: [Integer] -> Integer
somaImpares []  = 0
somaImpares (x:xs)
 | x `mod` 2 == 0 = somaImpares xs --Caso x seja par não adiciona valor ao retorno
 | otherwise = x + somaImpares xs -- Caso x seja impar, adiciona valor ao retorno
 
-- Questão 14
contaOcorrencias :: Eq a => a -> [a] -> Int
contaOcorrencias _ [] = 0 
contaOcorrencias n (x:xs)  
 | x == n = 1 + contaOcorrencias n xs -- Caso o valor que deseja contar seja igual a cabeça da lista, adiciona ao contador
 | otherwise = contaOcorrencias n xs -- Caso contrario, não
 
-- Questão 15
 
removeElemento :: Eq a => a -> [a] -> [a]
removeElemento _ [] = []
removeElemento x (y:ys)
  | x == y    = removeElemento x ys -- Caso o x seja igual a cabeça da lista, é retirado da lista
  | otherwise = y : removeElemento x ys

-- Questão 16
duplicarElementos :: [a] ->[a] 
duplicarElementos [] = []
duplicarElementos (x:xs) = x : x : duplicarElementos xs -- Faz uma chamada recursiva com a tail, mas antes adiciona a cabeça 2 x ao retorno

-- Questão 17
intercalar :: [a] -> [a] -> [a]
intercalar [] ys = ys -- Retorna a tail inteira se a primeira lista estiver vazia 
intercalar xs [] = xs -- Retorna a tail inteira se a segunda lista estiver vazia 
intercalar (x:xs) (y:ys) = x : y : intercalar xs ys -- Adiciona a cabeça de cada uma das listas a lista de retorno

-- Questão 18
removerDuplicatas :: Eq a => [a] -> [a]
removerDuplicatas [] = []
removerDuplicatas [x] = [x] -- Se só possuir um elemento, retorna ela mesma
removerDuplicatas (x:y:xs) -- Cria "duas cabeças" para a lista e compara, assim decidindo remover ou não a possível duplicata
  | x == y    = removerDuplicatas (y:xs)
  | otherwise = x : removerDuplicatas (y:xs)
