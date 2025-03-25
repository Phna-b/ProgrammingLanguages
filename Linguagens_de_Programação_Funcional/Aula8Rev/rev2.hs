-- Questão 01
import Data.List
ordena xs = sort xs

-- Questão 02
-- [[1,2],3,[4,5]] é incorreto, pois listas só armazenam valores de um mesmo tipo. No caso exemplificado temos tipo: Lista, Int e Lista portanto dessa forma o código está incorreto.

-- Questão 03 
quintoEle xs 
    | length xs >= 5 = head( tail ( tail ( tail (tail xs))))
    | otherwise = head(tail(xs))

-- Questão 04

data Forma = Retangulo Float Float
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

-- Questão 05

-- Recebe XS, utiliza o map para aplicar a função lambda na lista inteira.
quest5 xs = map (\x -> x*1+2) xs

-- Questão 06
reverso :: [a] -> [a]
reverso   = foldl (\x y -> y : x) []

-- Questão 07

replica 0 _ = []
replica n x = x : replica (n-1) x
 

-- Questão 08
primeiro 0 _ = []
primeiro n (x:xs) = x : primeiro (n-1) xs
 
-- QUestão 09

ignora 0 xs = xs
ignora n (x:xs) = ignora (n-1) xs


--10 
{- 
Nenhum dos dois códigos funciona. Pois a sintaxe está incorreta, o correto seria:

a) fmap (2+) (Just 3) - O fmap só permite a aplicação de funções em um único valor, caso seja preciso aplicar mais de uma função em mais de um valor é utilizado <$>
    Exemplo:
        fmap (2+) [1,2,3]
            Retorna: [3,4,5]
        
        (2+)<$>(3+)<$>[1,2,3]
            Retorna: [6,7,8]

b) Just (+2) <*> Just 3 - O <*> retorna o resultado da aplicação de diversas funções em uma lista. 
    Exemplo:
        [(*2), (+3)] <*> [1, 2, 3]
            Retorna: [2,4,6,3,6,9]
-}
