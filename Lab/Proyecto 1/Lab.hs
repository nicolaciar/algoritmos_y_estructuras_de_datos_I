-- Figuras

data Color = Rojo | Amarillo | Azul | Verde
  deriving (Show, Eq)

data Forma = Triangulo | Cuadrado | Rombo | Circulo
  deriving (Show, Eq)

type Figura = (Forma, Color, Int)

rojo, amarillo, azul, verde :: Figura -> Bool
rojo     (_, c, _) = c == Rojo
amarillo (_, c, _) = c == Amarillo
azul     (_, c, _) = c == Azul
verde    (_, c, _) = c == Verde

triangulo, cuadrado, rombo, circulo :: Figura -> Bool
triangulo (f, _, _) = f == Triangulo
cuadrado  (f, _, _) = f == Cuadrado
rombo     (f, _, _) = f == Rombo
circulo   (f, _, _) = f == Circulo

tam :: Figura -> Int
tam (_, _, t) = t

-- Listas para tests
xs1, xs2, xs3 :: [Figura]
xs1 = [(Circulo, Azul, 40), (Rombo, Rojo, 10)]
xs2 = [(Circulo, Rojo, 4), (Rombo, Rojo, 10)]
xs3 = [(Triangulo, Verde, 10)]  


-- Laboratorio 1.1

esCero :: Int -> Bool
esCero x = (x == 0)

esPositivo :: Int -> Bool
esPositivo x = (x > 0)

esVocal :: Char -> Bool
esVocal l | l == 'a' = True
          | l == 'e' = True
          | l == 'i' = True
          | l == 'o' = True
          | l == 'u' = True
          | otherwise = False

valorAbsoluto :: Int -> Int
valorAbsoluto x | (x>0 || x==0) = x
                | x<0 = -x

--Laboratorio 1.2

todosPositivos :: [Int] -> Bool
todosPositivos [] = True
todosPositivos (x:xs) = (x>0) && (todosPositivos xs)

hayPares :: [Int] -> Bool
hayPares [] = False
hayPares (x:xs) = (x `mod` 2 == 0) || hayPares xs

paratodo :: [Bool] -> Bool
paratodo [] = True
paratodo (x:xs) = (x == True) && paratodo xs

existe :: [Bool] -> Bool
existe [] = False
existe (x:xs) = (x == True) || existe xs


-- Laboratorio 1.3

-- 3a) Expresion: ⟨ ∀i : 0 ≤ i < #xs : xs.i > 0 ⟩
--     Variable libre: xs (i cuantificada)
--     Tipo: xs :: [Int]
--     Implementación corresponde a todosPositivos
--
-- 3b) Expresión: ⟨ ∃i : 0 ≤ i < #xs : xs.i = x ⟩
--     Variables libres: x, xs. i cuantificada
--     Tipos: xs::[Int], x::Int
--     Implementación:
existeEnLista :: Int -> [Int] -> Bool
existeEnLista _ [] = False
existeEnLista x (y:ys) = (x==y) || existeEnLista x ys

-- 3d) Expresión: ⟨ ∀i : 0 ≤ i < #xs − 1 : xs.i = xs.(i + 1) ⟩
--     Variable libre: xs, i cuantificada
--     Tipo: xs :: [Int]
--     Implementación:
todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales [_] = True
todosIguales (x:y:xs) = (x==y) && todosIguales (y:xs)


-- Laboratorio 1.5

todasRojas :: [Figura] -> Bool
todasRojas [] = True
todasRojas (x:xs) = rojo x && todasRojas xs

todasRombo :: [Figura] -> Bool
todasRombo [] = True
todasRombo (x:xs) = rombo x && todasRombo xs


-- Laboratorio 1.6

todasAmarillas :: [Figura] -> Bool
todasAmarillas [] = True
todasAmarillas (x:xs) = amarillo x && todasAmarillas xs

todasMayorIgual7 :: [Figura] -> Bool
todasMayorIgual7 [] = True
todasMayorIgual7 (x:xs) = (tam x >= 7) && todasMayorIgual7 xs

todasMenor5 :: [Figura] -> Bool
todasMenor5 [] = True
todasMenor5 (x:xs) = (tam x < 5) && todasMenor5 xs

todosTriangulosRojos :: [Figura] -> Bool
todosTriangulosRojos [] = True
todosTriangulosRojos (x:xs) | triangulo x = (rojo x && todosTriangulosRojos xs)
                            | not (triangulo x) = (todosTriangulosRojos xs)

existeCuadradoVerde :: [Figura] -> Bool
existeCuadradoVerde [] = False
existeCuadradoVerde (x:xs) = (cuadrado x && verde x) || existeCuadradoVerde xs

circulosAzulesMenor10 :: [Figura] -> Bool
circulosAzulesMenor10 [] = True
circulosAzulesMenor10 (x:xs) | (circulo x && azul x) = (tam x < 10) && circulosAzulesMenor10 xs
                             | not (circulo x && azul x) = circulosAzulesMenor10 xs 

noTrianguloAzul :: [Figura] -> Bool
noTrianguloAzul [] = True
noTrianguloAzul (x:xs) | triangulo x = not (azul x) && noTrianguloAzul xs
                       | not (triangulo x) = noTrianguloAzul xs

noCircAmarillosVerdes :: [Figura] -> Bool
noCircAmarillosVerdes [] = True
noCircAmarillosVerdes (x:xs) | (circulo x) = not (amarillo x || verde x) && noCircAmarillosVerdes xs 
                             | not (circulo x) = noCircAmarillosVerdes xs

existeCuadradoMenor5 :: [Figura] -> Bool
existeCuadradoMenor5 [] = False
existeCuadradoMenor5 (x:xs) = (cuadrado x && tam x < 5) || existeCuadradoMenor5 xs


-- PRACTICO 2

-- Lab 2.1




