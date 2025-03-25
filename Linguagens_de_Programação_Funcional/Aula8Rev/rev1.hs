-- 1
import Data.List
ordenar :: (Ord a) => [a] -> [a]
ordenar = sort

--2 

--Uma lista só possui um único tipo em sua composição, o código possui listas e inteiros. O exemplo correto seria [[1,2],[4,5]].
 sort[[1,2],[4,5]]
--3 
mysumP [a,b] = b
mysumP (x:xs) = mysumP xs 
pega x = mysumP(take 5 x) 

 
quinto xs = head ( tail (tail (tail (tail xs) )) )
 
    
--4

data Forma =  Retangulo Float Float 
area :: Forma -> Float
area(Retangulo x1 y1) = x1 * y1

areaRet = do
    putStrLn "Qual a base do retangulo?"
    msg <- getLine
    let msg1 = read msg :: Float 
    putStrLn "Digite a altura do retangulo?"
    des <- getLine
    let altura = read des :: Float 
    let resultado = area (Retangulo msg1 altura)
    putStrLn $ "Área: " ++ show resultado

    
--5
q5 xs = map (\x -> x * 1 + 2) xs

--6
reverso :: [a] -> [a]
reverso = foldl (\y x -> x : y) []

reverso1 :: [a] -> [a]
reverso1 = foldl adicionarElemento []

adicionarElemento :: [a] -> a -> [a]
adicionarElemento y x = x : y


-- \y x -> x : y é uma função temporaria, que está alterando a ordem

--7
 
replica 0 _ = []
replica x n = n : replica (x-1) n

replica1 0 _ = []
replica1 n x = x : replica1 (n-1) x

--8

pegue n xs = take n xs

--9
r1 0 xs = xs
r1 n (_:xs) = r1 (n-1) xs 

--10 

Nenhum dos dois códigos funciona. Pois a sintaxe está incorreta, o correto seria:

a) fmap (2+) (Just 3) - O fmap só permite a aplicação de funçõe em um único valor, caso seja preciso aplicar mais de uma função em mais de um valor é utilizado <$>
    Exemplo:
        fmap (2+) [1,2,3]
            Retorna: [3,4,5]
        
        (2+)<$>(3+)<$>[1,2,3]
            Retorna: [6,7,8]

b) Just (+2) <*> Just 3 - O <*> retorna o resultado da aplicação de diversas funções em uma lista. 
    Exemplo:
        [(*2), (+3)] <*> [1, 2, 3]
            Retorna: [2,4,6,3,6,9]