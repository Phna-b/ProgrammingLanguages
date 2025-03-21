-- 1
import Data.List
ordenar :: (Ord a) => [a] -> [a]
ordenar = sort

--2 

--Uma lista só possui um único tipo em sua composição, o código possui listas e inteiros. O exemplo correto seira [(1,2),(4,5)].

--3 
mysumP [a,b] = b
mysumP (x:xs) = mysumP xs 
pega x = mysumP(take 5 x) 

    
--4

data Forma = Circulo Float Float Float | Retangulo Float Float Float Float | Triangulo Float Float Float | Cilindro Float Float Float deriving (Eq, Show)
superficie::Forma -> Float
superficie(Retangulo x1 y1 x2 y2) = (abs $ x2 - 1) * (abs $ y2 - y1) 

areaRet = do
    putStrLn "Qual a base do retangulo?"
    msg <- getLine
    let msg1 = read msg :: Int 
    putStrLn "Digite a altura do retangulo?"
    des <- getLine
    let altura = read des :: Int 
    teste = altura*msg1
    putStrLn $ "Area: "
    