data Forma = Circulo Float Float Float | Retangulo Float Float Float Float | Triangulo Float Float Float | Cilindro Float Float Float deriving (Eq, Show)
superficie::Forma -> Float
superficie(Circulo _ _ r) = pi * r ^ 2
superficie(Retangulo x1 y1 x2 y2) = (abs $ x2 - 1) * (abs $ y2 - y1) 
superficie(Triangulo base altura _) = (base * altura)/2
superficie(Cilindro raio altura _) = 2 * pi * raio



--superficie $ Circulo 22.22 22.3 22.3 
-- Circulo 22 22 22 == Circulo 22 22 22 retorna true, pois adicionei o deriving Eq
-- Adicionando o show consigo escrever a variavel e printar