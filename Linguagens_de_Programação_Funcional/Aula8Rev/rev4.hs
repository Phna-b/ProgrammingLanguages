import Data.List

ordena xs = sort xs


--2 -- Uma lista não pode armazenar mais de um tipo.

--3 --
quinto xs = head (tail ( tail ( tail (tail xs))))

--4 

data Forma = Retangulo Float Float
area (Retangulo x y) = x * y

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

cinco xs = map(\x -> x * 1 + 2 ) xs

--6 
reverso :: [a] -> [a]
reverso = foldl (\x y -> y : x) []


--7 
replica 0 _ = []
replica n x = x : replica (n-1) x

--8 
primeiros 0 _ = []
primeiros n (x:xs) = x : primeiros (n-1) xs 

--9
ignora 0 xs = xs
ignora n (x:xs) = ignora (n-1) xs

 